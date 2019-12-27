// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SortStateAdapter extends TypeAdapter<SortState> {
  @override
  SortState read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SortState(
      sortType: fields[0] as String,
      searchType: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SortState obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.sortType)
      ..writeByte(1)
      ..write(obj.searchType);
  }
}
