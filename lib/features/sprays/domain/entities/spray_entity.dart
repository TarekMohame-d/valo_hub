import 'package:hive_flutter/hive_flutter.dart';

part 'spray_entity.g.dart';

@HiveType(typeId: 21)
class SprayEntity {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  final String? category;
  final String? themeUuid;
  final bool? isNullSpray;
  final bool? hideIfNotOwned;
  @HiveField(2)
  final String? displayIcon;
  @HiveField(3)
  final String? fullIcon;
  @HiveField(4)
  final String? fullTransparentIcon;
  @HiveField(5)
  final String? animationPng;
  @HiveField(6)
  final String? animationGif;

  SprayEntity({
    this.uuid,
    this.displayName,
    this.category,
    this.themeUuid,
    this.isNullSpray,
    this.hideIfNotOwned,
    this.displayIcon,
    this.fullIcon,
    this.fullTransparentIcon,
    this.animationPng,
    this.animationGif,
  });
}
