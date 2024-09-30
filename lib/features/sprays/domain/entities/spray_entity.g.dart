// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spray_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SprayEntityAdapter extends TypeAdapter<SprayEntity> {
  @override
  final int typeId = 21;

  @override
  SprayEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SprayEntity(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      displayIcon: fields[2] as String?,
      fullIcon: fields[3] as String?,
      fullTransparentIcon: fields[4] as String?,
      animationPng: fields[5] as String?,
      animationGif: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SprayEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.displayIcon)
      ..writeByte(3)
      ..write(obj.fullIcon)
      ..writeByte(4)
      ..write(obj.fullTransparentIcon)
      ..writeByte(5)
      ..write(obj.animationPng)
      ..writeByte(6)
      ..write(obj.animationGif);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SprayEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
