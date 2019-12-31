import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:sies_library/providers/api_provider.dart';
import 'package:sies_library/screens/container_page.dart';
import 'database/favourites_dao.dart';
import 'database/favourites_db.dart';
import 'models/sort_state.dart';

void main() {
//  WidgetsFlutterBinding.ensureInitialized(); see https://github.com/flutter/flutter/issues/46849
  final String appDocumentDir = '/data/user/0/com.kriticalflare.sies_library/app_flutter';
  Hive.init(appDocumentDir);
  Hive.registerAdapter(SortStateAdapter(), 0);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ApiProvider>(create: (_) => ApiProvider()),
        Provider<FavouritesDao>(create: (_) => FavouritesDatabase().favouritesDao),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: ContainerPage(),
      ),
    );
  }
}
