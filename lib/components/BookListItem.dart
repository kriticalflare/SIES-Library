import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/screens/details_page.dart';


class BookListItem extends StatelessWidget {
  final bool pop;
  final Results book;
  final int index;

  BookListItem({this.book, this.index, this.pop});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.book
      ),
      title: Text(
          '${book.title}'
      ),
      onTap: (){
        if(pop){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context){
                return DetailsPage(book: book,);
              }
          ));
        } else {
          Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return DetailsPage(book: book,);
              }
          ));
        }
      },
    );
  }
}
