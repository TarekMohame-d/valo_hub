import 'package:valo_hub/core/networking/api_constants.dart';
import 'package:valo_hub/core/networking/api_services.dart';
import 'package:valo_hub/features/player_cards/data/models/player_cards_model.dart';

class PlayerCardsRemoteDataSource {
  final ApiService _apiService;

  PlayerCardsRemoteDataSource(this._apiService);

  Future<PlayerCardsModel> getCards() async {
    final response = await _apiService.get(
      baseUrl: ApiConstants.valorantAPIbaseUrl,
      endPoint: ApiConstants.playerCardsEndPoint,
    );
    return PlayerCardsModel.fromJson(response);
  }
}
