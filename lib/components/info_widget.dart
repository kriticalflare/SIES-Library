import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String stars;
  final String ratingsCount;
  final String pages;
  final String year;

  InfoWidget({this.stars, this.pages, this.year, this.ratingsCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //Ratings and page info row
      children: <Widget>[
        Column(
          children: <Widget>[Text('${stars.contains('null') ? 'N/A' : stars} Stars'), Text('${ratingsCount.contains('null') ? 'N/A ' : ratingsCount} Ratings')],
        ),
        Column(
          children: <Widget>[Text('${pages.contains('null') ? 'N/A' : pages}'), Text('Pages')],
        ),
        Column(
          children: <Widget>[Text('${year == null ? 'N/A' : year}'), Text('Release')],
        ),
      ],
    );
  }
}
