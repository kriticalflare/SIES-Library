import 'package:flutter/material.dart';
import 'package:sies_library/models/google_books.dart';
import 'package:sies_library/services/google_books_service.dart';

class GBookProvider with ChangeNotifier{

  GoogleBooksService googleBooksService;

  Items _item;
  Items get bookItem => _item;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  GBookProvider(String query){
    googleBooksService = GoogleBooksService();
    getResults(query);
  }

  void getResults(String query) async {
    setLoading(true);
    _item = await googleBooksService.getBooksResults(query);
    setLoading(false);
  }

  void setLoading(bool b){
    _isLoading = b;
    notifyListeners();
  }

  void clearBook(){
    _item = null;
  }

}