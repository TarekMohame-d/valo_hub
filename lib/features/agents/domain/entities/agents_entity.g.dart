// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgentsEntityAdapter extends TypeAdapter<AgentsEntity> {
  @override
  final int typeId = 0;

  @override
  AgentsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgentsEntity(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      displayIcon: fields[3] as String?,
      fullPortrait: fields[4] as String?,
      killFeedPortrait: fields[5] as String?,
      background: fields[6] as String?,
      backgroundGradientColors: (fields[7] as List?)?.cast<String>(),
      role: fields[8] as Role?,
      abilities: (fields[9] as List?)?.cast<Abilities>(),
    );
  }

  @override
  void write(BinaryWriter writer, AgentsEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.fullPortrait)
      ..writeByte(5)
      ..write(obj.killFeedPortrait)
      ..writeByte(6)
      ..write(obj.background)
      ..writeByte(7)
      ..write(obj.backgroundGradientColors)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.abilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgentsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
