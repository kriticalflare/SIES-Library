import 'package:moor/moor.dart';
import 'package:sies_library/database/favourites.dart';
import 'package:sies_library/database/favourites_db.dart';
import 'package:sies_library/models/book.dart';

part 'favourites_dao.g.dart';

@UseDao(tables: [Favourites])
class FavouritesDao extends DatabaseAccessor<FavouritesDatabase>
    with _$FavouritesDaoMixin {
  FavouritesDao(FavouritesDatabase favouritesDatabase)
      : super(favouritesDatabase);

  Future _insertFavourite(Favourite favourite) =>
      into(favourites).insert(favourite);

  Stream<List<Favourite>> watchAllFav() => select(favourites).watch();

  Future _deleteFavourite(String id) =>
      (delete(favourites)..where((f) => f.sId.equals(id))).go();

  Stream<Favourite> fetchFavourite(Favourite favourite) =>
      (select(favourites)..where((f) => f.sId.equals(favourite.sId))).watchSingle();

  void insertFav(Results result) {
//    print(result.title);
    Favourite fav = Favourite.fromJson(result.toJsonDB());
    print(fav);
    _insertFavourite(fav);
  }

  void deleteFav(Results result) {
    _deleteFavourite(result.sId);
  }
}
