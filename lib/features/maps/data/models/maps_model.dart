import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';

part 'maps_model.g.dart';

@JsonSerializable()
class MapsModel {
  final int? status;
  @JsonKey(name: 'data')
  final List<MapData>? mapsData;

  MapsModel({
    this.status,
    this.mapsData,
  });

  factory MapsModel.fromJson(Map<String, dynamic> json) =>
      _$MapsModelFromJson(json);
}

@JsonSerializable()
class MapData {
  final String? uuid;
  final String? displayName;
  final String? narrativeDescription;
  final String? tacticalDescription;
  final String? coordinates;
  final String? displayIcon;
  final String? listViewIcon;
  final String? listViewIconTall;
  final String? splash;
  final String? stylizedBackgroundImage;
  final String? premierBackgroundImage;
  final String? assetPath;
  final String? mapUrl;
  final double? xMultiplier;
  final double? yMultiplier;
  final double? xScalarToAdd;
  final double? yScalarToAdd;
  @JsonKey(name: 'callouts')
  final List<CallOuts>? callOuts;

  MapData({
    this.uuid,
    this.displayName,
    this.narrativeDescription,
    this.tacticalDescription,
    this.coordinates,
    this.displayIcon,
    this.listViewIcon,
    this.listViewIconTall,
    this.splash,
    this.stylizedBackgroundImage,
    this.premierBackgroundImage,
    this.assetPath,
    this.mapUrl,
    this.xMultiplier,
    this.yMultiplier,
    this.xScalarToAdd,
    this.yScalarToAdd,
    this.callOuts,
  });

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);
}

@HiveType(typeId: 16)
@JsonSerializable()
class CallOuts {
  @HiveField(0)
  final String? regionName;
  @HiveField(1)
  final String? superRegionName;
  @HiveField(2)
  final Location? location;

  CallOuts({
    this.regionName,
    this.superRegionName,
    this.location,
  });

  factory CallOuts.fromJson(Map<String, dynamic> json) =>
      _$CallOutsFromJson(json);
}

@HiveType(typeId: 17)
@JsonSerializable()
class Location {
  @HiveField(0)
  final double? x;
  @HiveField(1)
  final double? y;

  Location({
    this.x,
    this.y,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

MapEntity toMapEntity(MapData map) {
  return MapEntity(
    assetPath: map.assetPath,
    callOuts: map.callOuts,
    coordinates: map.coordinates,
    displayIcon: map.displayIcon,
    displayName: map.displayName,
    listViewIcon: map.listViewIcon,
    listViewIconTall: map.listViewIconTall,
    mapUrl: map.mapUrl,
    splash: map.splash,
    stylizedBackgroundImage: map.stylizedBackgroundImage,
    tacticalDescription: map.tacticalDescription,
    xMultiplier: map.xMultiplier,
    yMultiplier: map.yMultiplier,
    xScalarToAdd: map.xScalarToAdd,
    yScalarToAdd: map.yScalarToAdd,
    narrativeDescription: map.narrativeDescription,
    premierBackgroundImage: map.premierBackgroundImage,
    uuid: map.uuid,
  );
}
