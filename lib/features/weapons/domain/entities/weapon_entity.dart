// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/adapters.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';

part 'weapon_entity.g.dart';

@HiveType(typeId: 4)
class WeaponEntity {
  @HiveField(0)
  final String? uuid;
  @HiveField(1)
  final String? displayName;
  @HiveField(2)
  final String? category;
  @HiveField(3)
  final String? displayIcon;
  @HiveField(4)
  final String? killStreamIcon;
  @HiveField(5)
  final WeaponStats? weaponStats;
  @HiveField(6)
  final ShopData? shopData;
  @HiveField(7)
  final List<Skins>? skins;

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
