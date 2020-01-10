import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:sies_library/components/category_chips.dart';
import 'package:sies_library/components/description_widget.dart';
import 'package:sies_library/components/info_widget.dart';
import 'package:sies_library/components/read_widget.dart';
import 'package:sies_library/components/title_widget.dart';
import 'package:sies_library/database/favourites_dao.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/models/google_books.dart';
import 'package:sies_library/providers/db_provider.dart';
import 'package:sies_library/providers/gbook_provider.dart';
import 'package:sies_library/screens/fav_details.dart';

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
                icon: Icon(Icons.bookmark),
                onPressed: () {
//                  print(book.title);
                  dbProvider.favStatus.sink.add(false);
                  favouritesDao.deleteFav(book);
                },
              );
            }
            if (!snapshot.data) {
              return IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {
//                  print(book.title);
                  favouritesDao.insertFav(book);
                },
              );
            }
          }
          return Container();
        });
  }

  Widget legacyFallBack(Results book){
    return IconButton(
      icon: Icon(
        Icons.open_in_browser,
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ApiDetailPage(
            book: book,
          );
        }));
      },
    );
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
        actions: <Widget>[favouritesButton(_book), shareButton(_book) , legacyFallBack(_book) ],
      ),
      body: Consumer<GBookProvider>(
        builder:
            (BuildContext context, GBookProvider gBookProvider, Widget child) {
          return gBookProvider.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : gBookProvider.bookItem != null // Handle books with no info
                  ? SafeArea(
                      child: SingleChildScrollView(
                      child: Column(
                        // 5 rows
                        children: <Widget>[
                          TitleWidget(
                            title: gBookProvider.bookItem.volumeInfo.title,
                            imageUrl: gBookProvider
                                .bookItem.volumeInfo.imageLinks?.thumbnail ,
                            author:
                                gBookProvider.bookItem.volumeInfo.authors != null ? gBookProvider.bookItem.volumeInfo.authors[0] : 'N/A',
                            publisher:
                                gBookProvider.bookItem.volumeInfo.publisher != null ? gBookProvider.bookItem.volumeInfo.publisher : 'N/A',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InfoWidget(
                            stars: gBookProvider.bookItem.volumeInfo.averageRating.toString(),
                            ratingsCount: gBookProvider.bookItem.volumeInfo.ratingsCount.toString(),
                            pages: gBookProvider.bookItem.volumeInfo.pageCount.toString(),
                            year: gBookProvider.bookItem.volumeInfo.publishedDate,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ReadWidget(
                            volumeId:  gBookProvider.bookItem.id != null
                                ? gBookProvider.bookItem.id : '',
                            previewLink: gBookProvider.bookItem.volumeInfo.previewLink,
                            availability: gBookProvider.bookItem.volumeInfo.readingModes.image || gBookProvider.bookItem.volumeInfo.readingModes.text ,
                          ),
                          CategoryChips(
                            categories:
                                gBookProvider.bookItem.volumeInfo.categories != null ? gBookProvider.bookItem.volumeInfo.categories : List<String>.filled(1, "N/A"),
                          ),
                          DescriptionWidget(
                            description:
                                gBookProvider.bookItem.volumeInfo.description,
                          ),
                        ],
                      ),
                    ))
                  : Center(
                      child: Text('VolumeInfo is null'),
                    );
        },
      ),
    );
  }

  @override
  void dispose() {
    dbProvider?.dispose();
    super.dispose();
  }
}
