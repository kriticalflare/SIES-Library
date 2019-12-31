import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    return StreamBuilder<List<Favourite>>(
      stream: Provider.of<FavouritesDao>(context)
          .watchAllMovies(),
      builder: (BuildContext context, AsyncSnapshot<List<Favourite>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(snapshot.data[index].title),
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
            child: Text('oof \n ${snapshot.connectionState}'),
          );
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
