import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

part 'weapon_model.g.dart';

@JsonSerializable(createToJson: false)
class WeaponModel {
  final int? status;
  @JsonKey(name: 'data')
  final List<WeaponData>? weaponsData;

  WeaponModel({
    this.status,
    this.weaponsData,
  });

  factory WeaponModel.fromJson(Map<String, dynamic> json) =>
      _$WeaponModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class WeaponData {
  final String? uuid;
  final String? displayName;
  final String? category;
  final String? defaultSkinUuid;
  final String? displayIcon;
  final String? killStreamIcon;
  final String? assetPath;
  final WeaponStats? weaponStats;
  final ShopData? shopData;
  final List<Skins>? skins;

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
@JsonSerializable(createToJson: false)
class WeaponStats {
  @HiveField(0)
  final double? fireRate;
  @HiveField(1)
  final int? magazineSize;
  @HiveField(2)
  final double? runSpeedMultiplier;
  @HiveField(3)
  final double? equipTimeSeconds;
  @HiveField(4)
  final double? reloadTimeSeconds;
  @HiveField(5)
  final double? firstBulletAccuracy;
  @HiveField(6)
  final int? shotgunPelletCount;
  @HiveField(7)
  final String? wallPenetration;
  @HiveField(8)
  final String? feature;
  @HiveField(9)
  final String? fireMode;
  @HiveField(10)
  final String? altFireType;
  @HiveField(11)
  final AdsStats? adsStats;
  @HiveField(12)
  final AltShotgunStats? altShotgunStats;
  @HiveField(13)
  final AirBurstStats? airBurstStats;
  @HiveField(14)
  final List<DamageRanges>? damageRanges;

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
@JsonSerializable(createToJson: false)
class AdsStats {
  @HiveField(0)
  final double? zoomMultiplier;
  @HiveField(1)
  final double? fireRate;
  @HiveField(2)
  final double? runSpeedMultiplier;
  @HiveField(3)
  final int? burstCount;
  @HiveField(4)
  final double? firstBulletAccuracy;

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
@JsonSerializable(createToJson: false)
class AltShotgunStats {
  @HiveField(0)
  final int? shotgunPelletCount;
  @HiveField(1)
  final double? burstRate;

  AltShotgunStats({
    this.shotgunPelletCount,
    this.burstRate,
  });

  factory AltShotgunStats.fromJson(Map<String, dynamic> json) =>
      _$AltShotgunStatsFromJson(json);
}

@HiveType(typeId: 8)
@JsonSerializable(createToJson: false)
class AirBurstStats {
  @HiveField(0)
  final int? shotgunPelletCount;
  @HiveField(1)
  final double? burstDistance;

  AirBurstStats({
    this.shotgunPelletCount,
    this.burstDistance,
  });

  factory AirBurstStats.fromJson(Map<String, dynamic> json) =>
      _$AirBurstStatsFromJson(json);
}

@HiveType(typeId: 9)
@JsonSerializable(createToJson: false)
class DamageRanges {
  @HiveField(0)
  final int? rangeStartMeters;
  @HiveField(1)
  final int? rangeEndMeters;
  @HiveField(2)
  final double? headDamage;
  @HiveField(3)
  final int? bodyDamage;
  @HiveField(4)
  final double? legDamage;

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
@JsonSerializable(createToJson: false)
class ShopData {
  @HiveField(0)
  final int? cost;
  @HiveField(1)
  final String? category;
  @HiveField(2)
  final int? shopOrderPriority;
  @HiveField(3)
  final String? categoryText;
  @HiveField(4)
  final GridPosition? gridPosition;
  @HiveField(5)
  final bool? canBeTrashed;
  @HiveField(6)
  final String? image;
  @HiveField(7)
  final String? newImage;
  @HiveField(8)
  final String? newImage2;
  @HiveField(9)
  final String? assetPath;

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
@JsonSerializable(createToJson: false)
class GridPosition {
  @HiveField(0)
  final int? row;
  @HiveField(1)
  final int? column;

  GridPosition({
    this.row,
    this.column,
  });

  factory GridPosition.fromJson(Map<String, dynamic> json) =>
      _$GridPositionFromJson(json);
}

@HiveType(typeId: 12)
@JsonSerializable(createToJson: false)
class Skins {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? themeUuid;
  @HiveField(3)
  final String? contentTierUuid;
  @HiveField(4)
  final String? displayIcon;
  @HiveField(5)
  final String? wallpaper;
  @HiveField(6)
  final String? assetPath;
  @HiveField(7)
  final List<Chromas>? chromas;
  @HiveField(8)
  final List<Levels>? levels;

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
@JsonSerializable(createToJson: false)
class Chromas {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? displayIcon;
  @HiveField(3)
  final String? fullRender;
  @HiveField(4)
  final String? swatch;
  @HiveField(5)
  final String? streamedVideo;
  @HiveField(6)
  final String? assetPath;

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
@JsonSerializable(createToJson: false)
class Levels {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? levelItem;
  @HiveField(3)
  final String? displayIcon;
  @HiveField(4)
  final String? streamedVideo;
  @HiveField(5)
  final String? assetPath;

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
