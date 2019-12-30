import 'package:flutter/material.dart';
import 'package:sies_library/models/book.dart';
import 'package:sies_library/services/library_service.dart';
import 'package:sies_library/util/constants.dart';

class ApiProvider with ChangeNotifier{

  LibraryService libraryService;

  List<Results> _bookList = [];
  List<Results> get bookList => _bookList;
  
  int _pageNumber;
  
  bool _isLoading;
  bool get isLoading => _isLoading;

  ApiProvider(){
    libraryService = LibraryService();
    _pageNumber = 0;
    getResults();
  }

   void getResults() async {
    // '' is passed to sort type for unsorted results
    setLoading(true);
    pageIncrement();
    List<Results> resultList = await libraryService.getSearchResult(
        SearchType.TITLE, '', '20', '$_pageNumber', '');
    _bookList.addAll(resultList);
    setLoading(false);
  }

  void setLoading(bool b){
    _isLoading = b;
    notifyListeners();
  }

  void pageIncrement(){
    _pageNumber = _pageNumber + 1;
  }

}