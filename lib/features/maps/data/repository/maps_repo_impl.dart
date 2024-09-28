import 'dart:developer';

import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/data_expiry_handler.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_local_data_source.dart';
import 'package:valo_hub/features/maps/data/data_sources/maps_remote_data_source.dart';
import 'package:valo_hub/features/maps/data/models/maps_model.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';
import 'package:valo_hub/features/maps/domain/repository/maps_repo.dart';

class MapsRepoImpl implements MapsRepo {
  final MapsRemoteDataSource _mapsRemoteDataSource;
  final MapsLocalDataSource _mapsLocalDataSource;

  MapsRepoImpl(this._mapsRemoteDataSource, this._mapsLocalDataSource);

  @override
  Future<ApiResult<List<MapEntity>>> getMaps() async {
    try {
      List<MapEntity> maps;

      if (await HiveHelper.hasData<MapEntity>(boxName: HiveBoxes.mapsBox)) {
        if (!await DataExpiryHandler.isDataExpired(
            SharedPrefKeys.mapsDBExpiration)) {
          maps = await _mapsLocalDataSource.getMaps();
          log('MapsRepoImpl: data has been fetched from local storage');
          return ApiResult.success(maps);
        }
      }

      MapsModel mapsModel = await _mapsRemoteDataSource.getMaps();
      maps = mapsModel.mapsData!.map((e) => toMapEntity(e)).toList();

      for (var map in maps) {
        await HiveHelper.saveData<MapEntity>(
          boxName: HiveBoxes.mapsBox,
          data: map,
          key: map.uuid!,
        );
      }

      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.mapsDBExpiration);
      log('MapsRepoImpl: data has been fetched from API and saved to local storage');

      return ApiResult.success(maps);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
