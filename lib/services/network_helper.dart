import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

class NetworkHelper{
//  String limit = '5';
//  String page = '0';
//  https://barathlibrary.herokuapp.com/book?search=programming&limit=60&page=1&sort=-Quantity

  final String apiUrl = 'https://barathlibrary.herokuapp.com/book?';

  Future<dynamic> getLibraryData(String requestType,String query, String limit, String page,String sortType) async{
    // requestType can be title , author or publisher
    String encodedQuery = Uri.encodeComponent(query); //Encode the query acc to https://www.w3schools.com/tags/ref_urlencode.asp
//    print('EncodedQuery : $encodedQuery');
    String url = '$apiUrl$requestType=$encodedQuery&limit=$limit&page=$page&sort=$sortType';
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

  Future<dynamic> getGBooksData() async {
    //TEST
    String query = 'Programming';


    //TEST
    String encodedQuery = Uri.encodeComponent(query);
    String url = 'https://www.googleapis.com/books/v1/volumes?q=$encodedQuery';
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      var data = response.body.toString();
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}