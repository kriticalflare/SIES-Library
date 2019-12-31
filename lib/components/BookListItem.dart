import 'package:flutter/material.dart';
import 'package:sies_library/database/favourites_db.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/screens/details_page.dart';

class BookListItem extends StatelessWidget {
  final bool pop;
  final Results book;
  final Favourite favourite;
  final int index;

  BookListItem({this.book, this.index, this.pop, this.favourite});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.book),
      title: book != null ? Text('${book.title}') : Text('${favourite.title}'),
      onTap: () {
        if (pop) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return DetailsPage(
              book: book != null ? book : Results.fromJsonDB(favourite.toJson()),
            );
          }));
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsPage(
              book: book != null ? book : Results.fromJsonDB(favourite.toJson()),
            );
          }));
        }
      },
    );
  }
}
