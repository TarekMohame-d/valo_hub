// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/hive_flutter.dart';

part 'player_cards_entity.g.dart';

@HiveType(typeId: 18)
class PlayerCardsEntity {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? smallArt;
  @HiveField(3)
  final String? wideArt;
  @HiveField(4)
  final String? largeArt;

  PlayerCardsEntity({
    this.uuid,
    this.displayName,
    this.smallArt,
    this.wideArt,
    this.largeArt,
  });
}
