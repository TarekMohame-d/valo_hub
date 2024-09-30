// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';

import 'package:valo_hub/features/maps/data/models/maps_model.dart';

part 'map_entity.g.dart';

@HiveType(typeId: 15)
class MapEntity {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? narrativeDescription;
  @HiveField(3)
  final String? tacticalDescription;
  @HiveField(4)
  final String? coordinates;
  @HiveField(5)
  final String? displayIcon;
  @HiveField(6)
  final String? listViewIcon;
  @HiveField(7)
  final String? listViewIconTall;
  @HiveField(8)
  final String? splash;
  @HiveField(9)
  final String? stylizedBackgroundImage;
  @HiveField(10)
  final String? premierBackgroundImage;
  @HiveField(11)
  final String? assetPath;
  @HiveField(12)
  final String? mapUrl;
  @HiveField(13)
  final double? xMultiplier;
  @HiveField(14)
  final double? yMultiplier;
  @HiveField(15)
  final double? xScalarToAdd;
  @HiveField(16)
  final double? yScalarToAdd;
  @HiveField(17)
  final List<CallOuts>? callOuts;

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
