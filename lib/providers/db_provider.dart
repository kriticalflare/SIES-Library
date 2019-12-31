import 'dart:async';
import 'package:sies_library/database/favourites_dao.dart';
import 'package:sies_library/database/favourites_db.dart';
import 'package:sies_library/models/book.dart';

class DbProvider{
  final FavouritesDao favouritesDao;
  final Results result;
  DbProvider(this.favouritesDao, this.result){
    _favStatus.sink.add(false);
    checkFavStatus();
  }

  StreamController<bool> _favStatus = StreamController<bool>();
  StreamController<bool> get favStatus => _favStatus;

   void checkFavStatus() async {
    Favourite fav = Favourite.fromJson(result.toJsonDB());
    favouritesDao.fetchFavourite(fav).listen(onData);
  }

  void onData(Favourite favourite){
     if(favourite == null){
       _favStatus.sink.add(false);
     } else {
       _favStatus.sink.add(true);
     }
   }

  void dispose(){
    _favStatus?.close();
  }
}