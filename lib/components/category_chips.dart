import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Category chips
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text('Computers'),
          ),
        )
      ],
    );
  }
}
