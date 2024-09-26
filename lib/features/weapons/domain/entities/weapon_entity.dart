// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/adapters.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';

part 'weapon_entity.g.dart';

@HiveType(typeId: 4)
class WeaponEntity {
  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? category;
  @HiveField(3)
  String? displayIcon;
  @HiveField(4)
  String? killStreamIcon;
  @HiveField(5)
  WeaponStats? weaponStats;
  @HiveField(6)
  ShopData? shopData;
  @HiveField(7)
  List<Skins>? skins;

  WeaponEntity({
    this.uuid,
    this.displayName,
    this.category,
    this.displayIcon,
    this.killStreamIcon,
    this.weaponStats,
    this.shopData,
    this.skins,
  });
}
