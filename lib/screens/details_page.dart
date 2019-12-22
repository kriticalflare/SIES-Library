import 'package:flutter/material.dart';
import 'package:sies_library/components/info_group_yp.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/components/author_row.dart';
import 'package:sies_library/components/publisher_info.dart';
import 'package:sies_library/components/lang_isbn.dart';
class DetailsPage extends StatefulWidget {
  final Results book;

  DetailsPage({@required this.book});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//            Image.asset(name),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/book.jpg',
//                  'https://via.placeholder.com/250.png/09f/fff',
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
              AuthorRow(book:_book),
              PublisherEdition(book: _book),
              Infographic(book: _book,),
              LangIsbn(book:_book),
            ],
          ),
        ),
      ),
    );
  }
}

