import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:sies_library/screens/container_page.dart';
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
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ContainerPage(),
    );
  }
}
