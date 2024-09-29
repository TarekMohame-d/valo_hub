// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';

import 'package:valo_hub/features/maps/data/models/maps_model.dart';

part 'map_entity.g.dart';

@HiveType(typeId: 15)
class MapEntity {
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? narrativeDescription;
  @HiveField(3)
  String? tacticalDescription;
  @HiveField(4)
  String? coordinates;
  @HiveField(5)
  String? displayIcon;
  @HiveField(6)
  String? listViewIcon;
  @HiveField(7)
  String? listViewIconTall;
  @HiveField(8)
  String? splash;
  @HiveField(9)
  String? stylizedBackgroundImage;
  @HiveField(10)
  String? premierBackgroundImage;
  @HiveField(11)
  String? assetPath;
  @HiveField(12)
  String? mapUrl;
  @HiveField(13)
  double? xMultiplier;
  @HiveField(14)
  double? yMultiplier;
  @HiveField(15)
  double? xScalarToAdd;
  @HiveField(16)
  double? yScalarToAdd;
  @HiveField(17)
  List<CallOuts>? callOuts;

  MapEntity({
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
}
