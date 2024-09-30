import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';

abstract class SprayRepo {
  Future<ApiResult<List<SprayEntity>>> getSprays();
}
