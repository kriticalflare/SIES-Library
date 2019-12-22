import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

class NetworkHelper{
//  String limit = '5';
//  String page = '0';
//  https://barathlibrary.herokuapp.com/book?title=Fundamentals%20of%20physics&limit=20&page=1

  final String apiUrl = 'https://barathlibrary.herokuapp.com/book?';

  Future<dynamic> getData(String requestType,String query, String limit, String page) async{
    // requestType can be title , author or publisher
    String encodedQuery = Uri.encodeComponent(query); //Encode the query acc to https://www.w3schools.com/tags/ref_urlencode.asp
//    print('EncodedQuery : $encodedQuery');
    String url = '$apiUrl$requestType=$encodedQuery&limit=$limit&page=$page';
//    print(url);
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      var data = response.body.toString();
//      print(data);
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}