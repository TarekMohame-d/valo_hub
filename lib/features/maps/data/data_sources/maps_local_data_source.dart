import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';

class MapsLocalDataSource {
  Future<List<MapEntity>> getMaps() async {
    List<MapEntity> maps = [];
    maps =
        await HiveHelper.getAllData<MapEntity>(boxName: HiveBoxes.mapsBox);
    return maps;
  }
}
