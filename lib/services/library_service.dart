import 'package:sies_library/services/network_helper.dart';
import 'package:sies_library/models/book.dart';


class LibraryService {
  NetworkHelper networkHelper = NetworkHelper();

//  Future<List<Pokemon>> getRandomPokemon() async {
//
//    try{
//      var decodedData = await networkHelper.getData('random');
////      print(decodedData['data'].toString());
//      List<Pokemon> pokeList = [];
//      pokeList = Data.fromJson(decodedData['data']).pokemon;
//      return pokeList;
//    }catch(e){
//      print(e);
//    }
//  }

  Future<List<Results>> getSearchResult(String requestType, String query, String limit, String page) async {

    try{
      var decodedData = await networkHelper.getData(requestType, query.toLowerCase(), limit, page);
      List<Results> books = Data.fromJson(decodedData['data']).results;
      return books;
    }catch (e){
      print(e);
    }
  }
}
