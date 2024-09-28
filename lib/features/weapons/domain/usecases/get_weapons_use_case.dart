import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/domain/repository/weapons_repo.dart';

class GetWeaponsUseCase {
  final WeaponsRepo _weaponsRepo;

  GetWeaponsUseCase(this._weaponsRepo);

  Future<ApiResult<List<WeaponEntity>>> call() async {
    return await _weaponsRepo.getWeapons();
  }

  List<WeaponEntity> filterAgents(
      List<WeaponEntity> weaponsList, String query) {
    if (query == 'All') {
      return weaponsList;
    }
    return weaponsList
        .where((weapon) =>
            weapon.category!.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
