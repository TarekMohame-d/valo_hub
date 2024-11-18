import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';

part 'spray_model.g.dart';

@JsonSerializable(createToJson: false)
class SprayModel {
  final int? status;
  @JsonKey(name: 'data')
  final List<SprayData>? sprayData;

  SprayModel({
    this.status,
    this.sprayData,
  });

  factory SprayModel.fromJson(Map<String, dynamic> json) =>
      _$SprayModelFromJson(json);
}

@HiveType(typeId: 22)
@JsonSerializable(createToJson: false)
class SprayData {
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

  final String? assetPath;
  final List<Levels>? levels;

  SprayData({
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
    this.assetPath,
    this.levels,
  });

  factory SprayData.fromJson(Map<String, dynamic> json) =>
      _$SprayDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class Levels {
  final String? uuid;
  final int? sprayLevel;
  final String? displayName;
  final String? displayIcon;
  final String? assetPath;

  Levels({
    this.uuid,
    this.sprayLevel,
    this.displayName,
    this.displayIcon,
    this.assetPath,
  });

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);
}

SprayEntity toSprayEntity(SprayData spray) {
  return SprayEntity(
    animationGif: spray.animationGif,
    animationPng: spray.animationPng,
    category: spray.category,
    displayName: spray.displayName,
    displayIcon: spray.displayIcon,
    fullIcon: spray.fullIcon,
    fullTransparentIcon: spray.fullTransparentIcon,
    hideIfNotOwned: spray.hideIfNotOwned,
    isNullSpray: spray.isNullSpray,
    themeUuid: spray.themeUuid,
    uuid: spray.uuid,
  );
}
