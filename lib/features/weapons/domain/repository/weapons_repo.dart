import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';

abstract class WeaponsRepo {
  Future<ApiResult<List<WeaponEntity>>> getWeapons();
}
