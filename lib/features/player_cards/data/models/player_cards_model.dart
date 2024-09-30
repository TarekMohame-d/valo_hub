import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';

part 'player_cards_model.g.dart';

@HiveType(typeId: 19)
@JsonSerializable()
class PlayerCardsModel {
  @HiveField(0)
  final int? status;
  @JsonKey(name: 'data')
  @HiveField(1)
  final List<CardData>? cardData;

  PlayerCardsModel({
    this.status,
    this.cardData,
  });

  factory PlayerCardsModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerCardsModelFromJson(json);
}

@HiveType(typeId: 20)
@JsonSerializable()
class CardData {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final bool? isHiddenIfNotOwned;
  @HiveField(3)
  final String? themeUuid;
  @HiveField(4)
  final String? displayIcon;
  @HiveField(5)
  final String? smallArt;
  @HiveField(6)
  final String? wideArt;
  @HiveField(7)
  final String? largeArt;
  @HiveField(8)
  final String? assetPath;

  CardData({
    this.uuid,
    this.displayName,
    this.isHiddenIfNotOwned,
    this.themeUuid,
    this.displayIcon,
    this.smallArt,
    this.wideArt,
    this.largeArt,
    this.assetPath,
  });

  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);
}

PlayerCardsEntity toPlayerCardsEntity(CardData card) {
  return PlayerCardsEntity(
    uuid: card.uuid,
    displayName: card.displayName,
    smallArt: card.smallArt,
    wideArt: card.wideArt,
    largeArt: card.largeArt,
  );
}
