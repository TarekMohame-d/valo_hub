import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';
import 'package:valo_hub/features/maps/domain/repository/maps_repo.dart';

class GetMapsUseCase {
  final MapsRepo _mapsRepo;

  GetMapsUseCase(this._mapsRepo);
  Future<ApiResult<List<MapEntity>>> call() async {
    return await _mapsRepo.getMaps();
  }
}
