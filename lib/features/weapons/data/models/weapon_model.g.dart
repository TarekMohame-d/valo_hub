// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponStatsAdapter extends TypeAdapter<WeaponStats> {
  @override
  final int typeId = 5;

  @override
  WeaponStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponStats(
      fireRate: fields[0] as double?,
      magazineSize: fields[1] as int?,
      runSpeedMultiplier: fields[2] as double?,
      equipTimeSeconds: fields[3] as double?,
      reloadTimeSeconds: fields[4] as double?,
      firstBulletAccuracy: fields[5] as double?,
      shotgunPelletCount: fields[6] as int?,
      wallPenetration: fields[7] as String?,
      feature: fields[8] as String?,
      fireMode: fields[9] as String?,
      altFireType: fields[10] as String?,
      adsStats: fields[11] as AdsStats?,
      altShotgunStats: fields[12] as AltShotgunStats?,
      airBurstStats: fields[13] as AirBurstStats?,
      damageRanges: (fields[14] as List?)?.cast<DamageRanges>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponStats obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.fireRate)
      ..writeByte(1)
      ..write(obj.magazineSize)
      ..writeByte(2)
      ..write(obj.runSpeedMultiplier)
      ..writeByte(3)
      ..write(obj.equipTimeSeconds)
      ..writeByte(4)
      ..write(obj.reloadTimeSeconds)
      ..writeByte(5)
      ..write(obj.firstBulletAccuracy)
      ..writeByte(6)
      ..write(obj.shotgunPelletCount)
      ..writeByte(7)
      ..write(obj.wallPenetration)
      ..writeByte(8)
      ..write(obj.feature)
      ..writeByte(9)
      ..write(obj.fireMode)
      ..writeByte(10)
      ..write(obj.altFireType)
      ..writeByte(11)
      ..write(obj.adsStats)
      ..writeByte(12)
      ..write(obj.altShotgunStats)
      ..writeByte(13)
      ..write(obj.airBurstStats)
      ..writeByte(14)
      ..write(obj.damageRanges);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AdsStatsAdapter extends TypeAdapter<AdsStats> {
  @override
  final int typeId = 6;

  @override
  AdsStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AdsStats(
      zoomMultiplier: fields[0] as double?,
      fireRate: fields[1] as double?,
      runSpeedMultiplier: fields[2] as double?,
      burstCount: fields[3] as int?,
      firstBulletAccuracy: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, AdsStats obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.zoomMultiplier)
      ..writeByte(1)
      ..write(obj.fireRate)
      ..writeByte(2)
      ..write(obj.runSpeedMultiplier)
      ..writeByte(3)
      ..write(obj.burstCount)
      ..writeByte(4)
      ..write(obj.firstBulletAccuracy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AdsStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AltShotgunStatsAdapter extends TypeAdapter<AltShotgunStats> {
  @override
  final int typeId = 7;

  @override
  AltShotgunStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AltShotgunStats(
      shotgunPelletCount: fields[0] as int?,
      burstRate: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, AltShotgunStats obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.shotgunPelletCount)
      ..writeByte(1)
      ..write(obj.burstRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AltShotgunStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AirBurstStatsAdapter extends TypeAdapter<AirBurstStats> {
  @override
  final int typeId = 8;

  @override
  AirBurstStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AirBurstStats(
      shotgunPelletCount: fields[0] as int?,
      burstDistance: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, AirBurstStats obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.shotgunPelletCount)
      ..writeByte(1)
      ..write(obj.burstDistance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AirBurstStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DamageRangesAdapter extends TypeAdapter<DamageRanges> {
  @override
  final int typeId = 9;

  @override
  DamageRanges read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DamageRanges(
      rangeStartMeters: fields[0] as int?,
      rangeEndMeters: fields[1] as int?,
      headDamage: fields[2] as double?,
      bodyDamage: fields[3] as int?,
      legDamage: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, DamageRanges obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.rangeStartMeters)
      ..writeByte(1)
      ..write(obj.rangeEndMeters)
      ..writeByte(2)
      ..write(obj.headDamage)
      ..writeByte(3)
      ..write(obj.bodyDamage)
      ..writeByte(4)
      ..write(obj.legDamage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DamageRangesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ShopDataAdapter extends TypeAdapter<ShopData> {
  @override
  final int typeId = 10;

  @override
  ShopData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShopData(
      cost: fields[0] as int?,
      category: fields[1] as String?,
      shopOrderPriority: fields[2] as int?,
      categoryText: fields[3] as String?,
      gridPosition: fields[4] as GridPosition?,
      canBeTrashed: fields[5] as bool?,
      image: fields[6] as String?,
      newImage: fields[7] as String?,
      newImage2: fields[8] as String?,
      assetPath: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ShopData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.cost)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.shopOrderPriority)
      ..writeByte(3)
      ..write(obj.categoryText)
      ..writeByte(4)
      ..write(obj.gridPosition)
      ..writeByte(5)
      ..write(obj.canBeTrashed)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.newImage)
      ..writeByte(8)
      ..write(obj.newImage2)
      ..writeByte(9)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GridPositionAdapter extends TypeAdapter<GridPosition> {
  @override
  final int typeId = 11;

  @override
  GridPosition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GridPosition(
      row: fields[0] as int?,
      column: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, GridPosition obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.row)
      ..writeByte(1)
      ..write(obj.column);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridPositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SkinsAdapter extends TypeAdapter<Skins> {
  @override
  final int typeId = 12;

  @override
  Skins read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Skins(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      themeUuid: fields[2] as String?,
      contentTierUuid: fields[3] as String?,
      displayIcon: fields[4] as String?,
      wallpaper: fields[5] as String?,
      assetPath: fields[6] as String?,
      chromas: (fields[7] as List?)?.cast<Chromas>(),
      levels: (fields[8] as List?)?.cast<Levels>(),
    );
  }

  @override
  void write(BinaryWriter writer, Skins obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.themeUuid)
      ..writeByte(3)
      ..write(obj.contentTierUuid)
      ..writeByte(4)
      ..write(obj.displayIcon)
      ..writeByte(5)
      ..write(obj.wallpaper)
      ..writeByte(6)
      ..write(obj.assetPath)
      ..writeByte(7)
      ..write(obj.chromas)
      ..writeByte(8)
      ..write(obj.levels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkinsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChromasAdapter extends TypeAdapter<Chromas> {
  @override
  final int typeId = 13;

  @override
  Chromas read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Chromas(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      displayIcon: fields[2] as String?,
      fullRender: fields[3] as String?,
      swatch: fields[4] as String?,
      streamedVideo: fields[5] as String?,
      assetPath: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Chromas obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.displayIcon)
      ..writeByte(3)
      ..write(obj.fullRender)
      ..writeByte(4)
      ..write(obj.swatch)
      ..writeByte(5)
      ..write(obj.streamedVideo)
      ..writeByte(6)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChromasAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LevelsAdapter extends TypeAdapter<Levels> {
  @override
  final int typeId = 14;

  @override
  Levels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Levels(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      levelItem: fields[2] as String?,
      displayIcon: fields[3] as String?,
      streamedVideo: fields[4] as String?,
      assetPath: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Levels obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.levelItem)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.streamedVideo)
      ..writeByte(5)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LevelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeaponModel _$WeaponModelFromJson(Map<String, dynamic> json) => WeaponModel(
      status: (json['status'] as num?)?.toInt(),
      weaponsData: (json['data'] as List<dynamic>?)
          ?.map((e) => WeaponData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponData _$WeaponDataFromJson(Map<String, dynamic> json) => WeaponData(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      defaultSkinUuid: json['defaultSkinUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      killStreamIcon: json['killStreamIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStats.fromJson(json['weaponStats'] as Map<String, dynamic>),
      shopData: json['shopData'] == null
          ? null
          : ShopData.fromJson(json['shopData'] as Map<String, dynamic>),
      skins: (json['skins'] as List<dynamic>?)
          ?.map((e) => Skins.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

WeaponStats _$WeaponStatsFromJson(Map<String, dynamic> json) => WeaponStats(
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      magazineSize: (json['magazineSize'] as num?)?.toInt(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num?)?.toDouble(),
      reloadTimeSeconds: (json['reloadTimeSeconds'] as num?)?.toDouble(),
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
      shotgunPelletCount: (json['shotgunPelletCount'] as num?)?.toInt(),
      wallPenetration: json['wallPenetration'] as String?,
      feature: json['feature'] as String?,
      fireMode: json['fireMode'] as String?,
      altFireType: json['altFireType'] as String?,
      adsStats: json['adsStats'] == null
          ? null
          : AdsStats.fromJson(json['adsStats'] as Map<String, dynamic>),
      altShotgunStats: json['altShotgunStats'] == null
          ? null
          : AltShotgunStats.fromJson(
              json['altShotgunStats'] as Map<String, dynamic>),
      airBurstStats: json['airBurstStats'] == null
          ? null
          : AirBurstStats.fromJson(
              json['airBurstStats'] as Map<String, dynamic>),
      damageRanges: (json['damageRanges'] as List<dynamic>?)
          ?.map((e) => DamageRanges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

AdsStats _$AdsStatsFromJson(Map<String, dynamic> json) => AdsStats(
      zoomMultiplier: (json['zoomMultiplier'] as num?)?.toDouble(),
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      burstCount: (json['burstCount'] as num?)?.toInt(),
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
    );

AltShotgunStats _$AltShotgunStatsFromJson(Map<String, dynamic> json) =>
    AltShotgunStats(
      shotgunPelletCount: (json['shotgunPelletCount'] as num?)?.toInt(),
      burstRate: (json['burstRate'] as num?)?.toDouble(),
    );

AirBurstStats _$AirBurstStatsFromJson(Map<String, dynamic> json) =>
    AirBurstStats(
      shotgunPelletCount: (json['shotgunPelletCount'] as num?)?.toInt(),
      burstDistance: (json['burstDistance'] as num?)?.toDouble(),
    );

DamageRanges _$DamageRangesFromJson(Map<String, dynamic> json) => DamageRanges(
      rangeStartMeters: (json['rangeStartMeters'] as num?)?.toInt(),
      rangeEndMeters: (json['rangeEndMeters'] as num?)?.toInt(),
      headDamage: (json['headDamage'] as num?)?.toDouble(),
      bodyDamage: (json['bodyDamage'] as num?)?.toInt(),
      legDamage: (json['legDamage'] as num?)?.toDouble(),
    );

ShopData _$ShopDataFromJson(Map<String, dynamic> json) => ShopData(
      cost: (json['cost'] as num?)?.toInt(),
      category: json['category'] as String?,
      shopOrderPriority: (json['shopOrderPriority'] as num?)?.toInt(),
      categoryText: json['categoryText'] as String?,
      gridPosition: json['gridPosition'] == null
          ? null
          : GridPosition.fromJson(json['gridPosition'] as Map<String, dynamic>),
      canBeTrashed: json['canBeTrashed'] as bool?,
      image: json['image'] as String?,
      newImage: json['newImage'] as String?,
      newImage2: json['newImage2'] as String?,
      assetPath: json['assetPath'] as String?,
    );

GridPosition _$GridPositionFromJson(Map<String, dynamic> json) => GridPosition(
      row: (json['row'] as num?)?.toInt(),
      column: (json['column'] as num?)?.toInt(),
    );

Skins _$SkinsFromJson(Map<String, dynamic> json) => Skins(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>?)
          ?.map((e) => Chromas.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Levels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Chromas _$ChromasFromJson(Map<String, dynamic> json) => Chromas(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String?,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Levels _$LevelsFromJson(Map<String, dynamic> json) => Levels(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );
