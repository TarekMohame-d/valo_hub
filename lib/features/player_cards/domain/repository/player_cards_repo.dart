import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';

abstract class PlayerCardsRepo {
  Future<ApiResult<List<PlayerCardsEntity>>> getPlayerCards();
}
