import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //Ratings and page info row
      children: <Widget>[
        Column(
          children: <Widget>[Text('5 Stars'), Text('20 Ratings')],
        ),
        Column(
          children: <Widget>[Text('400'), Text('Pages')],
        ),
        Column(
          children: <Widget>[Text('2015-11-16'), Text('Release')],
        ),
      ],
    );
  }
}
