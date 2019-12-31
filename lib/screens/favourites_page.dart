import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sies_library/components/BookListItem.dart';
import 'package:sies_library/database/favourites_dao.dart';
import 'package:sies_library/database/favourites_db.dart';

class FavouritesPage extends StatefulWidget {
  FavouritesPage({Key key}) : super(key: key);
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
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
              return BookListItem(
                favourite: snapshot.data[index],
                index: index,
                pop: false,
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
