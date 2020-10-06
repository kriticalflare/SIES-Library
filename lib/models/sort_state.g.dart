// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SortStateAdapter extends TypeAdapter<SortState> {
  @override
  final int typeId = 0;

  @override
  SortState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
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

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
