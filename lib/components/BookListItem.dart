import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sies_library/database/favourites_db.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/providers/gbook_provider.dart';
import 'package:sies_library/screens/details_page.dart';
import 'package:sies_library/screens/fav_details.dart';

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
            return  ChangeNotifierProvider<GBookProvider>(
              child: DetailsPage(
                book: book != null
                    ? book
                    : Results.fromJsonDB(favourite.toJson()),
              ),
              create: (BuildContext context) {
                return GBookProvider(
                    book.title ?? Results.fromJsonDB(favourite.toJson()));
              },
            );
          }));
        } else {
          if(book != null){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChangeNotifierProvider<GBookProvider>(
                child: DetailsPage(
                  book: book != null
                      ? book
                      : Results.fromJsonDB(favourite.toJson()),
                ),
                create: (BuildContext context) {
                  return GBookProvider(
                      book.title ?? Results.fromJsonDB(favourite.toJson()));
                },
              );
            }));
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ApiDetailPage(
                book: Results.fromJsonDB(favourite.toJson()),
              );
            }));
          }
        }
      },
    );
  }
}
