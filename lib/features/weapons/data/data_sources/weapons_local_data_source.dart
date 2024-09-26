import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

class WeaponsLocalDataSource {
  Future<List<WeaponEntity>> getWeapons() async {
    List<WeaponEntity> weapons = [];
    weapons = await HiveHelper.getAllData<WeaponEntity>(
        boxName: HiveBoxes.weaponsBox);
    return weapons;
  }
}
