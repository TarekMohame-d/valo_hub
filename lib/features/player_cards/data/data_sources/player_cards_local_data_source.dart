import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';

class PlayerCardsLocalDataSource {
  Future<List<PlayerCardsEntity>> getCards() async {
    List<PlayerCardsEntity> cards = [];
    cards = await HiveHelper.getAllData<PlayerCardsEntity>(
      boxName: HiveBoxes.playerCardsBox,
    );
    return cards;
  }
}
