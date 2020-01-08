import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String description;

  DescriptionWidget({this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //about book row
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              overflow: TextOverflow.clip,
            ),
          ),
        )
      ],
    );
  }
}
