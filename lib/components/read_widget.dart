import 'package:flutter/material.dart';
import 'package:sies_library/screens/read_web_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadWidget extends StatelessWidget {
  final String isbn;
  final String previewLink;

  ReadWidget({this.isbn, this.previewLink}){
//    print(previewLink);
//    print(isbn);
  }

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
          onPressed:  isbn.isNotEmpty ? () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return ReadWebView(
                  isbn: isbn,
                );
              }
            ));
          } : null
        ),
        IconButton(
          icon: Icon( Icons.open_in_new,),
          onPressed: previewLink.isNotEmpty && previewLink != null ? ()async{
            if (await canLaunch(previewLink)) {
              await launch(previewLink);
            } else {
              throw 'Could not launch $previewLink';
            }
          } : null ,
        )
      ],
    );
  }
}
