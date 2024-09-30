import 'dart:developer';

import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/data_expiry_handler.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/networking/api_error_handler.dart';
import 'package:valo_hub/core/networking/api_result.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_local_data_source.dart';
import 'package:valo_hub/features/player_cards/data/data_sources/player_cards_remote_data_source.dart';
import 'package:valo_hub/features/player_cards/data/models/player_cards_model.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/domain/repository/player_cards_repo.dart';

class PlayerCardsRepoImpl implements PlayerCardsRepo {
  final PlayerCardsRemoteDataSource _playerCardsRemoteDataSource;
  final PlayerCardsLocalDataSource _playerCardsLocalDataSource;

  PlayerCardsRepoImpl(
      this._playerCardsRemoteDataSource, this._playerCardsLocalDataSource);

  @override
  Future<ApiResult<List<PlayerCardsEntity>>> getPlayerCards() async {
    try {
      List<PlayerCardsEntity> playerCards = [];

      if (await HiveHelper.hasData<PlayerCardsEntity>(
          boxName: HiveBoxes.playerCardsBox)) {
        if (!await DataExpiryHandler.isDataExpired(
            SharedPrefKeys.playerCardsDBExpiration)) {
          playerCards = await _playerCardsLocalDataSource.getCards();
          log('PlayerCardsRepoImpl: data has been fetched from local storage');
          return ApiResult.success(playerCards);
        }
      }

      PlayerCardsModel playerCardsModel =
          await _playerCardsRemoteDataSource.getCards();
      playerCards = playerCardsModel.cardData!
          .map((e) => toPlayerCardsEntity(e))
          .toList();

      for (var playerCard in playerCards) {
        await HiveHelper.saveData<PlayerCardsEntity>(
          boxName: HiveBoxes.playerCardsBox,
          data: playerCard,
          key: playerCard.uuid!,
        );
      }

      await DataExpiryHandler.updateLastUpdatedDate(
          SharedPrefKeys.playerCardsDBExpiration);
      log('PlayerCardsRepoImpl: data has been fetched from API and saved to local storage');

      return ApiResult.success(playerCards);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
