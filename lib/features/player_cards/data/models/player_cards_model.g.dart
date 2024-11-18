// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_cards_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerCardsModelAdapter extends TypeAdapter<PlayerCardsModel> {
  @override
  final int typeId = 19;

  @override
  PlayerCardsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerCardsModel(
      status: fields[0] as int?,
      cardData: (fields[1] as List?)?.cast<CardData>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlayerCardsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.cardData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerCardsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CardDataAdapter extends TypeAdapter<CardData> {
  @override
  final int typeId = 20;

  @override
  CardData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CardData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      isHiddenIfNotOwned: fields[2] as bool?,
      themeUuid: fields[3] as String?,
      displayIcon: fields[4] as String?,
      smallArt: fields[5] as String?,
      wideArt: fields[6] as String?,
      largeArt: fields[7] as String?,
      assetPath: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CardData obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.isHiddenIfNotOwned)
      ..writeByte(3)
      ..write(obj.themeUuid)
      ..writeByte(4)
      ..write(obj.displayIcon)
      ..writeByte(5)
      ..write(obj.smallArt)
      ..writeByte(6)
      ..write(obj.wideArt)
      ..writeByte(7)
      ..write(obj.largeArt)
      ..writeByte(8)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerCardsModel _$PlayerCardsModelFromJson(Map<String, dynamic> json) =>
    PlayerCardsModel(
      status: (json['status'] as num?)?.toInt(),
      cardData: (json['data'] as List<dynamic>?)
          ?.map((e) => CardData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CardData _$CardDataFromJson(Map<String, dynamic> json) => CardData(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      isHiddenIfNotOwned: json['isHiddenIfNotOwned'] as bool?,
      themeUuid: json['themeUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      smallArt: json['smallArt'] as String?,
      wideArt: json['wideArt'] as String?,
      largeArt: json['largeArt'] as String?,
      assetPath: json['assetPath'] as String?,
    );
