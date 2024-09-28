import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';

abstract class MapsRepo {
  Future<ApiResult<List<MapEntity>>> getMaps();
}
