import 'package:sies_library/models/google_books.dart';
import 'package:sies_library/services/network_helper.dart';

class GoogleBooksService {
  NetworkHelper networkHelper = NetworkHelper();

  Future<void> getBooksResults() async{
    try{
      var decodedData = await networkHelper.getGBooksData();
      print(decodedData);
      List<Items> items = GoogleBooks.fromJson(decodedData).items;
      Items item = items.elementAt(0);
      print(item.volumeInfo.title);
      return items;
    }catch (e){
      print(e.toString());
    }
  }
}