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
                icon: Icon(Icons.bookmark),
                onPressed: () {
                  print(book.title);
                  dbProvider.favStatus.sink.add(false);
                  favouritesDao.deleteFav(book);
                },
              );
            }
            if (!snapshot.data) {
              return IconButton(
                icon: Icon(Icons.bookmark_border),
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
        child: SingleChildScrollView(
          child: Column(
            // 5 rows
            children: <Widget>[
              TitleWidget(),
              SizedBox(height: 10,),
              InfoWidget(),
              SizedBox(
                height: 20,
              ),
              ReadWidget(),
              CategoryChips(),
              DescriptionWidget(),
            ],
          ),
        )
      ),
    );
  }

  @override
  void dispose() {
    dbProvider?.dispose();
    super.dispose();
  }
}

class DescriptionWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //about book row
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The Go Programming Language is the authoritative resource for any programmer who wants to learn Go. It shows how to write clear and idiomatic Go to solve real-world problems. The book does not assume prior knowledge of Go nor experience with any specific language, so you’ll find it accessible whether you’re most comfortable with JavaScript, Ruby, Python, Java, or C++. The first chapter is a tutorial on the basic concepts of Go, introduced through programs for file I/O and text processing, simple graphics, and web clients and servers. Early chapters cover the structural elements of Go programs: syntax, control flow, data types, and the organization of a program into packages, files, and functions. The examples illustrate many packages from the standard library and show how to create new ones of your own. Later chapters explain the package mechanism in more detail, and how to build, test, and maintain projects using the go tool. The chapters on methods and interfaces introduce Go’s unconventional approach to object-oriented programming, in which methods can be declared on any type and interfaces are implicitly satisfied. They explain the key principles of encapsulation, composition, and substitutability using realistic examples. Two chapters on concurrency present in-depth approaches to this increasingly important topic. The first, which covers the basic mechanisms of goroutines and channels, illustrates the style known as communicating sequential processes for which Go is renowned. The second covers more traditional aspects of concurrency with shared variables. These chapters provide a solid foundation for programmers encountering concurrency for the first time. The final two chapters explore lower-level features of Go. One covers the art of metaprogramming using reflection. The other shows how to use the unsafe package to step outside the type system for special situations, and how to use the cgo tool to create Go bindings for C libraries. The book features hundreds of interesting and practical examples of well-written Go code that cover the whole language, its most important packages, and a wide range of applications. Each chapter has exercises to test your understanding and explore extensions and alternatives. Source code is freely available for download from http://gopl.io/ and may be conveniently fetched, built, and installed using the go get command.',
            overflow: TextOverflow.clip,
            ),
          ),
        )
      ],
    );
  }
}

class CategoryChips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Category chips
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text(
                'Computers'
            ),
          ),
        )
      ],
    );
  }
}

class ReadWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Read or Preview button
        FlatButton(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                'Read'
              ),
            ),
          ),
          onPressed: (){},
        )
      ],
    );
  }
}

class InfoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //Ratings and page info row
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              '5 Stars'
            ),
            Text(
              '20 Ratings'
            )
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              '400'
            ),
            Text(
              'Pages'
            )
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              '2015-11-16'
            ),
            Text(
              'Release'
            )
          ],
        ),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network("http://books.google.com/books/content?id=SJHvCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api")),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'The Go Programming Language',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
              ),
              Text(
                'Alan A. A. Donovan',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Addison-Wesley Professional',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )
        //Title Row
      ],
    );
  }
}
