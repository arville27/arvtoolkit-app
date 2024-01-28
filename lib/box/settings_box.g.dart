// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsBoxAdapter extends TypeAdapter<SettingsBox> {
  @override
  final int typeId = 0;

  @override
  SettingsBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SettingsBox(
      arvtoolkitApi: fields[0] as String,
      applicationTheme: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SettingsBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.arvtoolkitApi)
      ..writeByte(1)
      ..write(obj.applicationTheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
