import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

part 'weapon_model.g.dart';

@JsonSerializable()
class WeaponModel {
  int? status;
  @JsonKey(name: 'data')
  List<WeaponData>? weaponsData;

  WeaponModel({
    this.status,
    this.weaponsData,
  });

  factory WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponModelFromJson(json);
}

@JsonSerializable()
class WeaponData {
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;

  WeaponData({
    this.uuid,
    this.displayName,
    this.category,
    this.defaultSkinUuid,
    this.displayIcon,
    this.killStreamIcon,
    this.assetPath,
    this.weaponStats,
    this.shopData,
    this.skins,
  });

  factory WeaponData.fromJson(Map<String, dynamic> json) =>
      _$WeaponDataFromJson(json);
}

@HiveType(typeId: 5)
@JsonSerializable()
class WeaponStats {
  @HiveField(0)
  double? fireRate;
  @HiveField(1)
  int? magazineSize;
  @HiveField(2)
  double? runSpeedMultiplier;
  @HiveField(3)
  double? equipTimeSeconds;
  @HiveField(4)
  double? reloadTimeSeconds;
  @HiveField(5)
  double? firstBulletAccuracy;
  @HiveField(6)
  int? shotgunPelletCount;
  @HiveField(7)
  String? wallPenetration;
  @HiveField(8)
  String? feature;
  @HiveField(9)
  String? fireMode;
  @HiveField(10)
  String? altFireType;
  @HiveField(11)
  AdsStats? adsStats;
  @HiveField(12)
  AltShotgunStats? altShotgunStats;
  @HiveField(13)
  AirBurstStats? airBurstStats;
  @HiveField(14)
  List<DamageRanges>? damageRanges;

  WeaponStats({
    this.fireRate,
    this.magazineSize,
    this.runSpeedMultiplier,
    this.equipTimeSeconds,
    this.reloadTimeSeconds,
    this.firstBulletAccuracy,
    this.shotgunPelletCount,
    this.wallPenetration,
    this.feature,
    this.fireMode,
    this.altFireType,
    this.adsStats,
    this.altShotgunStats,
    this.airBurstStats,
    this.damageRanges,
  });

  factory WeaponStats.fromJson(Map<String, dynamic> json) =>
      _$WeaponStatsFromJson(json);
}

@HiveType(typeId: 6)
@JsonSerializable()
class AdsStats {
  @HiveField(0)
  double? zoomMultiplier;
  @HiveField(1)
  double? fireRate;
  @HiveField(2)
  double? runSpeedMultiplier;
  @HiveField(3)
  int? burstCount;
  @HiveField(4)
  double? firstBulletAccuracy;

  AdsStats({
    this.zoomMultiplier,
    this.fireRate,
    this.runSpeedMultiplier,
    this.burstCount,
    this.firstBulletAccuracy,
  });

  factory AdsStats.fromJson(Map<String, dynamic> json) =>
      _$AdsStatsFromJson(json);
}

@HiveType(typeId: 7)
@JsonSerializable()
class AltShotgunStats {
  @HiveField(0)
  int? shotgunPelletCount;
  @HiveField(1)
  double? burstRate;

  AltShotgunStats({
    this.shotgunPelletCount,
    this.burstRate,
  });

  factory AltShotgunStats.fromJson(Map<String, dynamic> json) =>
      _$AltShotgunStatsFromJson(json);
}

@HiveType(typeId: 8)
@JsonSerializable()
class AirBurstStats {
  @HiveField(0)
  int? shotgunPelletCount;
  @HiveField(1)
  double? burstDistance;

  AirBurstStats({
    this.shotgunPelletCount,
    this.burstDistance,
  });

  factory AirBurstStats.fromJson(Map<String, dynamic> json) =>
      _$AirBurstStatsFromJson(json);
}

@HiveType(typeId: 9)
@JsonSerializable()
class DamageRanges {
  @HiveField(0)
  int? rangeStartMeters;
  @HiveField(1)
  int? rangeEndMeters;
  @HiveField(2)
  double? headDamage;
  @HiveField(3)
  int? bodyDamage;
  @HiveField(4)
  double? legDamage;

  DamageRanges({
    this.rangeStartMeters,
    this.rangeEndMeters,
    this.headDamage,
    this.bodyDamage,
    this.legDamage,
  });

  factory DamageRanges.fromJson(Map<String, dynamic> json) =>
      _$DamageRangesFromJson(json);
}

@HiveType(typeId: 10)
@JsonSerializable()
class ShopData {
  @HiveField(0)
  int? cost;
  @HiveField(1)
  String? category;
  @HiveField(2)
  int? shopOrderPriority;
  @HiveField(3)
  String? categoryText;
  @HiveField(4)
  GridPosition? gridPosition;
  @HiveField(5)
  bool? canBeTrashed;
  @HiveField(6)
  String? image;
  @HiveField(7)
  String? newImage;
  @HiveField(8)
  String? newImage2;
  @HiveField(9)
  String? assetPath;

  ShopData({
    this.cost,
    this.category,
    this.shopOrderPriority,
    this.categoryText,
    this.gridPosition,
    this.canBeTrashed,
    this.image,
    this.newImage,
    this.newImage2,
    this.assetPath,
  });

  factory ShopData.fromJson(Map<String, dynamic> json) =>
      _$ShopDataFromJson(json);
}

@HiveType(typeId: 11)
@JsonSerializable()
class GridPosition {
  @HiveField(0)
  int? row;
  @HiveField(1)
  int? column;

  GridPosition({
    this.row,
    this.column,
  });

  factory GridPosition.fromJson(Map<String, dynamic> json) =>
      _$GridPositionFromJson(json);
}

@HiveType(typeId: 12)
@JsonSerializable()
class Skins {
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? themeUuid;
  @HiveField(3)
  String? contentTierUuid;
  @HiveField(4)
  String? displayIcon;
  @HiveField(5)
  String? wallpaper;
  @HiveField(6)
  String? assetPath;
  @HiveField(7)
  List<Chromas>? chromas;
  @HiveField(8)
  List<Levels>? levels;

  Skins({
    this.uuid,
    this.displayName,
    this.themeUuid,
    this.contentTierUuid,
    this.displayIcon,
    this.wallpaper,
    this.assetPath,
    this.chromas,
    this.levels,
  });

  factory Skins.fromJson(Map<String, dynamic> json) => _$SkinsFromJson(json);
}

@HiveType(typeId: 13)
@JsonSerializable()
class Chromas {
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? displayIcon;
  @HiveField(3)
  String? fullRender;
  @HiveField(4)
  String? swatch;
  @HiveField(5)
  String? streamedVideo;
  @HiveField(6)
  String? assetPath;

  Chromas({
    this.uuid,
    this.displayName,
    this.displayIcon,
    this.fullRender,
    this.swatch,
    this.streamedVideo,
    this.assetPath,
  });

  factory Chromas.fromJson(Map<String, dynamic> json) =>
      _$ChromasFromJson(json);
}

@HiveType(typeId: 14)
@JsonSerializable()
class Levels {
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? levelItem;
  @HiveField(3)
  String? displayIcon;
  @HiveField(4)
  String? streamedVideo;
  @HiveField(5)
  String? assetPath;

  Levels({
    this.uuid,
    this.displayName,
    this.levelItem,
    this.displayIcon,
    this.streamedVideo,
    this.assetPath,
  });

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);
}

WeaponEntity toWeaponEntity(WeaponData weapon) => WeaponEntity(
      uuid: weapon.uuid,
      displayIcon: weapon.displayIcon,
      displayName: weapon.displayName,
      shopData: weapon.shopData,
      skins: weapon.skins,
      category: weapon.category,
      killStreamIcon: weapon.killStreamIcon,
      weaponStats: weapon.weaponStats,
    );
