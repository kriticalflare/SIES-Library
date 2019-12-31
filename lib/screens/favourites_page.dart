import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sies_library/components/BookListItem.dart';
import 'package:sies_library/database/favourites_dao.dart';
import 'package:sies_library/database/favourites_db.dart';
import 'package:sies_library/models/book.dart';

class FavouritesPage extends StatefulWidget {
  FavouritesPage({Key key}) : super(key: key);
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    FavouritesDao favouritesDao = Provider.of<FavouritesDao>(context);
    return StreamBuilder<List<Favourite>>(
      stream: Provider.of<FavouritesDao>(context).watchAllFav(),
      builder: (BuildContext context, AsyncSnapshot<List<Favourite>> snapshot) {
        if (snapshot.hasData && snapshot.data.isEmpty) {
          return Center(
            child: Text('Add some books to favourites to view them offline!'),
          );
        }

        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              Favourite item = snapshot.data[index];
              return Dismissible(
                key: Key(item.toString()),
                background: Container(color: Colors.redAccent),
                onDismissed: (direction){
                  favouritesDao.deleteFav(Results.fromJsonDB(item.toJson()));
                },
                child: BookListItem(
                  favourite: item,
                  index: index,
                  pop: false,
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return (Center(
            child: Text('Some error has occured \n ${snapshot.error}'),
          ));
        }

        return Center(
          child: Container(),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
