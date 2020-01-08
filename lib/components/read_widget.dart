import 'package:flutter/material.dart';

class ReadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Read or Preview button
        FlatButton(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text('Read'),
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
