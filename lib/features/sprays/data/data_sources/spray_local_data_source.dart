import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';

class SprayLocalDataSource {
  Future<List<SprayEntity>> getSprays() async {
    List<SprayEntity> sprays = [];
    sprays =
        await HiveHelper.getAllData<SprayEntity>(boxName: HiveBoxes.spraysBox);
    return sprays;
  }
}
