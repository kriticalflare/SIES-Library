import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';

class PublisherEdition extends StatelessWidget {
  final Results book;

  PublisherEdition({@required this.book});

  @override
  Widget build(BuildContext context) {
    String publisher;
    String edition;
    if (book.publisher != null) {
      publisher = book.publisher;
    } else {
      publisher = 'N/A';
    }
    if (book.edition != null) {
      edition = book.edition;
    } else {
      edition = 'N/A';
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Publisher: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              label: Text('$publisher'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Edition: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              label: Text('$edition'),
            ),
          )
        ],
      ),
    );
//    return Text(
//      'Publisher: $publisher'
//    );
  }
}
