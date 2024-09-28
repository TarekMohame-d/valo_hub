// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
import 'package:valo_hub/features/weapons/data/models/weapon_model.dart';

class WeaponsRemoteDataSource {
  final ApiService _apiService;

  WeaponsRemoteDataSource(
    this._apiService,
  );

  Future<WeaponModel> getWeapons() async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.valorantAPIbaseUrl,
      endPoint: ApiConstants.weaponsEndPoint,
    );
    return WeaponModel.fromJson(response);
  }
}
