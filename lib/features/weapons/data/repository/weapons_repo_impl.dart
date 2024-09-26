import 'dart:developer';

import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/data_expiry_handler.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_local_data_source.dart';
import 'package:valo_hub/features/weapons/data/data_sources/weapons_remote_data_source.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/domain/repository/weapons_repo.dart';

class WeaponsRepoImpl implements WeaponsRepo {
  final WeaponsRemoteDataSource _weaponsRemoteDataSource;
  final WeaponsLocalDataSource _weaponsLocalDataSource;

  WeaponsRepoImpl(this._weaponsRemoteDataSource, this._weaponsLocalDataSource);

  @override
  Future<ApiResult<List<WeaponEntity>>> getWeapons() async {
    try {
      List<WeaponEntity> weapons;

      if (await HiveHelper.hasData<WeaponEntity>(
          boxName: HiveBoxes.weaponsBox)) {
        if (!await DataExpiryHandler.isDataExpired(
            SharedPrefKeys.weaponsDBExpiration)) {
          weapons = await _weaponsLocalDataSource.getWeapons();
          if (!weapons.isNullOrEmpty()) {
            log('WeaponsRepoImpl : data has been fetched from local storage');
            return ApiResult.success(weapons);
          }
        }
      }

      WeaponModel weaponModel = await _weaponsRemoteDataSource.getWeapons();

      weapons = weaponModel.weaponsData!
          .map((weapon) => toWeaponEntity(weapon))
          .toList();

      for (var weapon in weapons) {
        await HiveHelper.saveData<WeaponEntity>(
          boxName: HiveBoxes.weaponsBox,
          data: weapon,
          key: weapon.uuid!,
        );
      }

      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.weaponsDBExpiration);
      log('WeaponsRepoImpl: data has been fetched from API and saved to local storage');

      return ApiResult.success(weapons);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
