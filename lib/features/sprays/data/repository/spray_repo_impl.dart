import 'dart:developer';

import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/data_expiry_handler.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/sprays/data/data_sources/spray_local_data_source.dart';
import 'package:valo_hub/features/sprays/data/data_sources/spray_remote_data_source.dart';
import 'package:valo_hub/features/sprays/data/models/spray_model.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';
import 'package:valo_hub/features/sprays/domain/repository/spray_repo.dart';

class SprayRepoImpl implements SprayRepo {
  final SprayLocalDataSource _sprayLocalDataSource;
  final SprayRemoteDataSource _sprayRemoteDataSource;

  SprayRepoImpl(this._sprayLocalDataSource, this._sprayRemoteDataSource);
  @override
  Future<ApiResult<List<SprayEntity>>> getSprays() async {
    try {
      final List<SprayEntity> sprays;

      if (await HiveHelper.hasData<SprayEntity>(boxName: HiveBoxes.spraysBox)) {
        if (!await DataExpiryHandler.isDataExpired(
            SharedPrefKeys.spraysDBExpiration)) {
          sprays = await _sprayLocalDataSource.getSprays();
          log('SprayRepoImpl: data has been fetched from local storage');
          return ApiResult.success(sprays);
        }
      }

      final SprayModel sprayModel = await _sprayRemoteDataSource.getSprays();
      sprays = sprayModel.sprayData!.map((e) => toSprayEntity(e)).toList();
      for (var spray in sprays) {
        await HiveHelper.saveData<SprayEntity>(
          boxName: HiveBoxes.spraysBox,
          data: spray,
          key: spray.uuid!,
        );
      }

      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.spraysDBExpiration);
      log('SprayRepoImpl: data has been fetched from API and saved to local storage');
      return ApiResult.success(sprays);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
