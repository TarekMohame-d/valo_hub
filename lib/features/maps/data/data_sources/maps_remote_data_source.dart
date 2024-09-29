import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
import 'package:valo_hub/features/maps/data/models/maps_model.dart';

class MapsRemoteDataSource {
  final ApiService _apiService;
  MapsRemoteDataSource(this._apiService);

  Future<MapsModel> getMaps() async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.valorantAPIbaseUrl,
      endPoint: ApiConstants.mapsEndPoint,
    );
    return MapsModel.fromJson(response);
  }
}
