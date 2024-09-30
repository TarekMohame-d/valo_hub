import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
import 'package:valo_hub/features/sprays/data/models/spray_model.dart';

class SprayRemoteDataSource {
  final ApiService _apiService;

  SprayRemoteDataSource(this._apiService);

  Future<SprayModel> getSprays() async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.valorantAPIbaseUrl,
      endPoint: ApiConstants.spraysEndPoint,
    );
    return SprayModel.fromJson(response);
  }
}
