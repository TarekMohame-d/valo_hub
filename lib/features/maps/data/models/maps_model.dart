import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';

part 'maps_model.g.dart';

@JsonSerializable()
class MapsModel {
  int? status;
  @JsonKey(name: 'data')
  List<MapData>? mapsData;

  MapsModel({
    this.status,
    this.mapsData,
  });

  factory MapsModel.fromJson(Map<String, dynamic> json) =>
      _$MapsModelFromJson(json);
}

@JsonSerializable()
class MapData {
  String? uuid;
  String? displayName;
  String? narrativeDescription;
  String? tacticalDescription;
  String? coordinates;
  String? displayIcon;
  String? listViewIcon;
  String? listViewIconTall;
  String? splash;
  String? stylizedBackgroundImage;
  String? premierBackgroundImage;
  String? assetPath;
  String? mapUrl;
  double? xMultiplier;
  double? yMultiplier;
  double? xScalarToAdd;
  double? yScalarToAdd;
  @JsonKey(name: 'callouts')
  List<CallOuts>? callOuts;

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
  String? regionName;
  @HiveField(1)
  String? superRegionName;
  @HiveField(2)
  Location? location;

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
  double? x;
  @HiveField(1)
  double? y;

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
