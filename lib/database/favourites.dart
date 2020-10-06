import 'package:moor/moor.dart';

class Favourites extends Table {
  TextColumn get sId => text()();
  IntColumn get sN => integer().nullable()();
  TextColumn get author1 => text().nullable()();
  TextColumn get author2 => text().nullable()();
  TextColumn get author3 => text().nullable()();
  TextColumn get title => text()();
  TextColumn get edition => text().nullable()();
  IntColumn get year => integer().nullable()();
  TextColumn get publisher => text().nullable()();
  TextColumn get pages => text().nullable()();
  TextColumn get language => text().nullable()();
  TextColumn get iSBNISSN => text().nullable()();
  IntColumn get quantity => integer().nullable()();
  IntColumn get iV => integer().nullable()();

  @override
  Set<Column> get primaryKey => {sId};
  
}