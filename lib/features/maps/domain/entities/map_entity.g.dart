// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapEntityAdapter extends TypeAdapter<MapEntity> {
  @override
  final int typeId = 15;

  @override
  MapEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapEntity(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      narrativeDescription: fields[2] as String?,
      tacticalDescription: fields[3] as String?,
      coordinates: fields[4] as String?,
      displayIcon: fields[5] as String?,
      listViewIcon: fields[6] as String?,
      listViewIconTall: fields[7] as String?,
      splash: fields[8] as String?,
      stylizedBackgroundImage: fields[9] as String?,
      premierBackgroundImage: fields[10] as String?,
      assetPath: fields[11] as String?,
      mapUrl: fields[12] as String?,
      xMultiplier: fields[13] as double?,
      yMultiplier: fields[14] as double?,
      xScalarToAdd: fields[15] as double?,
      yScalarToAdd: fields[16] as double?,
      callOuts: (fields[17] as List?)?.cast<CallOuts>(),
    );
  }

  @override
  void write(BinaryWriter writer, MapEntity obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.narrativeDescription)
      ..writeByte(3)
      ..write(obj.tacticalDescription)
      ..writeByte(4)
      ..write(obj.coordinates)
      ..writeByte(5)
      ..write(obj.displayIcon)
      ..writeByte(6)
      ..write(obj.listViewIcon)
      ..writeByte(7)
      ..write(obj.listViewIconTall)
      ..writeByte(8)
      ..write(obj.splash)
      ..writeByte(9)
      ..write(obj.stylizedBackgroundImage)
      ..writeByte(10)
      ..write(obj.premierBackgroundImage)
      ..writeByte(11)
      ..write(obj.assetPath)
      ..writeByte(12)
      ..write(obj.mapUrl)
      ..writeByte(13)
      ..write(obj.xMultiplier)
      ..writeByte(14)
      ..write(obj.yMultiplier)
      ..writeByte(15)
      ..write(obj.xScalarToAdd)
      ..writeByte(16)
      ..write(obj.yScalarToAdd)
      ..writeByte(17)
      ..write(obj.callOuts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
