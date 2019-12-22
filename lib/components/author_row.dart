import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';

class AuthorRow extends StatelessWidget {
  final Results book;
  AuthorRow({@required this.book});
  @override
  Widget build(BuildContext context) {
    List<String> authorList = [];
    List<Widget> chipList = [];

    if(book.author1 != null){
      authorList.add(book.author1);
    }
    if(book.author2 != null){
      authorList.add(book.author2);
    }
    if(book.author3 != null){
      authorList.add(book.author3);
    }

    if (authorList.isEmpty){
      authorList.add('N/A');
    }

    var title = Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Text(
          'Authors: '
      ),
    );

    chipList.add(title);

    for(String author in authorList){
      var chip = Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Chip(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0)
          ),
          label: Text(
              author
          ),
        ),
      );
      chipList.add(chip);
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: chipList,
      ),
    );
  }
}


