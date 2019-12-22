import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';

class LangIsbn extends StatelessWidget {
  final Results book;
  LangIsbn({@required this.book});
  @override
  Widget build(BuildContext context) {
    String language;
    String isbn;
    if (book.language != null) {
      language = book.language;
    } else {
      language = 'N/A';
    }
    if (book.iSBNISSN != null) {
      isbn = book.iSBNISSN;
    } else {
      isbn = 'N/A';
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Language: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              label: Text('$language'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('ISBN: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              label: Text('$isbn'),
            ),
          )
        ],
      ),
    );
  }
}
