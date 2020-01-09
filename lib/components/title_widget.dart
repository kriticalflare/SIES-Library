import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String publisher;

  TitleWidget({this.imageUrl, this.title, this.publisher, this.author});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: imageUrl != null ? ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl, height: 160, width: 128,)) : Icon(
            Icons.description
          )
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              Text(
                author,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                publisher,
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
