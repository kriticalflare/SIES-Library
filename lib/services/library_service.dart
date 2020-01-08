import 'package:sies_library/services/network_helper.dart';
import 'package:sies_library/models/book.dart';


class LibraryService {
  NetworkHelper networkHelper = NetworkHelper();

  Future<List<Results>> getSearchResult(String requestType, String query, String limit, String page, String sortType) async {

    try{
      var decodedData = await networkHelper.getLibraryData(requestType, query.toLowerCase(), limit, page,sortType);
      List<Results> books = Data.fromJson(decodedData['data']).results;
      return books;
    }catch (e){
      print(e);
    }
  }
}
