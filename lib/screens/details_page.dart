import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:sies_library/components/info_group_yp.dart';
import 'package:sies_library/database/favourites_dao.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/components/author_row.dart';
import 'package:sies_library/components/publisher_info.dart';
import 'package:sies_library/components/lang_isbn.dart';
import 'package:sies_library/providers/db_provider.dart';

class DetailsPage extends StatefulWidget {
  final Results book;

  DetailsPage({@required this.book});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DbProvider dbProvider;

  Widget shareButton(Results book) {
    String bookAuthor = book.author1 != null ? "by ${book.author1}" : '';
    return IconButton(
      icon: Icon(Icons.share),
      onPressed: () {
        Share.share(
            "Here’s a book for you… ${book.title} ${bookAuthor}\nFor more such books, get the SIES Library App\n https://github.com/kriticalflare/SIES-Library/releases/latest ",
        );
      },
    );
  }

  Widget favouritesButton(Results book) {
    FavouritesDao favouritesDao = Provider.of<FavouritesDao>(context);
    DbProvider dbProvider = DbProvider(favouritesDao, book);
    return StreamBuilder<bool>(
        stream: dbProvider.favStatus.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data) {
              return IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  print(book.title);
                  dbProvider.favStatus.sink.add(false);
                  favouritesDao.deleteFav(book);
                },
              );
            }
            if (!snapshot.data) {
              return IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {
                  print(book.title);
                  favouritesDao.insertFav(book);
                },
              );
            }
          }
          return Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    Results _book = widget.book;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Details'),
        actions: <Widget>[
          favouritesButton(_book),
          shareButton(_book)
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/book.jpg',
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _book.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              AuthorRow(book: _book),
              PublisherEdition(book: _book),
              Infographic(
                book: _book,
              ),
              LangIsbn(book: _book),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    dbProvider?.dispose();
    super.dispose();
  }
}
