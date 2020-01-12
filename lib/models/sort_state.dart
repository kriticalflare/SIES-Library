import 'package:hive/hive.dart';

part 'sort_state.g.dart';

@HiveType(typeId: 0)
class SortState {

  @HiveField(0)
  String sortType;

  @HiveField(1)
  String searchType;

  SortState({this.sortType, this.searchType});

}