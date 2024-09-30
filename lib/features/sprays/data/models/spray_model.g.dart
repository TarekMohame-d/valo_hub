// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spray_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SprayDataAdapter extends TypeAdapter<SprayData> {
  @override
  final int typeId = 22;

  @override
  SprayData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SprayData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      displayIcon: fields[2] as String?,
      fullIcon: fields[3] as String?,
      fullTransparentIcon: fields[4] as String?,
      animationPng: fields[5] as String?,
      animationGif: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SprayData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.displayIcon)
      ..writeByte(3)
      ..write(obj.fullIcon)
      ..writeByte(4)
      ..write(obj.fullTransparentIcon)
      ..writeByte(5)
      ..write(obj.animationPng)
      ..writeByte(6)
      ..write(obj.animationGif);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SprayDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SprayModel _$SprayModelFromJson(Map<String, dynamic> json) => SprayModel(
      status: (json['status'] as num?)?.toInt(),
      sprayData: (json['data'] as List<dynamic>?)
          ?.map((e) => SprayData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SprayModelToJson(SprayModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.sprayData,
    };

SprayData _$SprayDataFromJson(Map<String, dynamic> json) => SprayData(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      themeUuid: json['themeUuid'] as String?,
      isNullSpray: json['isNullSpray'] as bool?,
      hideIfNotOwned: json['hideIfNotOwned'] as bool?,
      displayIcon: json['displayIcon'] as String?,
      fullIcon: json['fullIcon'] as String?,
      fullTransparentIcon: json['fullTransparentIcon'] as String?,
      animationPng: json['animationPng'] as String?,
      animationGif: json['animationGif'] as String?,
      assetPath: json['assetPath'] as String?,
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Levels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SprayDataToJson(SprayData instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'category': instance.category,
      'themeUuid': instance.themeUuid,
      'isNullSpray': instance.isNullSpray,
      'hideIfNotOwned': instance.hideIfNotOwned,
      'displayIcon': instance.displayIcon,
      'fullIcon': instance.fullIcon,
      'fullTransparentIcon': instance.fullTransparentIcon,
      'animationPng': instance.animationPng,
      'animationGif': instance.animationGif,
      'assetPath': instance.assetPath,
      'levels': instance.levels,
    };

Levels _$LevelsFromJson(Map<String, dynamic> json) => Levels(
      uuid: json['uuid'] as String?,
      sprayLevel: (json['sprayLevel'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$LevelsToJson(Levels instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'sprayLevel': instance.sprayLevel,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
    };
