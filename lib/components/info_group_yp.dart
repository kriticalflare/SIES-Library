import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';

class Infographic extends StatelessWidget {
  final Results book;

  Infographic({@required this.book});

  @override
  Widget build(BuildContext context) {
    String year;
    String pages;
    String quantity;
    if (book.year != null || book.year != 0) {
      year = book.year.toString();
    } else {
      year = 'N/A';
    }
    if (book.pages != null) {
      pages = book.pages;
    } else {
      pages = 'N/A';
    }
    if (book.quantity != null) {
      quantity = book.quantity.toString();
    } else {
      quantity = 'N/A';
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Year: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              label: Text('$year'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Pages: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              label: Text('$pages'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Quantity: '),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Chip(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              label: Text('$quantity'),
            ),
          )
        ],
      ),
    );
  }
}
