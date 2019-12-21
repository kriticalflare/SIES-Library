import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';


class BookListItem extends StatelessWidget {
  final Results book;
  final int index;

  BookListItem({this.book, this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.book
      ),
      title: Text(
          '${book.title}'
      ),
    );
  }
}
