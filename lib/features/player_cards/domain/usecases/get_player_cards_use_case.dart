import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/domain/repository/player_cards_repo.dart';

class GetPlayerCardsUseCase {
  final PlayerCardsRepo _playerCardsRepo;

  GetPlayerCardsUseCase(this._playerCardsRepo);

  Future<ApiResult<List<PlayerCardsEntity>>> call() async {
    return _playerCardsRepo.getPlayerCards();
  }
}
