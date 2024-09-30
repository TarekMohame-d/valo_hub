// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_cards_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerCardsEntityAdapter extends TypeAdapter<PlayerCardsEntity> {
  @override
  final int typeId = 18;

  @override
  PlayerCardsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerCardsEntity(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      smallArt: fields[2] as String?,
      wideArt: fields[3] as String?,
      largeArt: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PlayerCardsEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.smallArt)
      ..writeByte(3)
      ..write(obj.wideArt)
      ..writeByte(4)
      ..write(obj.largeArt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerCardsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
