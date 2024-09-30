import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/networking/api_error_model.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/domain/usecases/get_player_cards_use_case.dart';

part 'player_cards_state.dart';

class PlayerCardsCubit extends Cubit<PlayerCardsState> {
  PlayerCardsCubit(this._getPlayerCardsUseCase) : super(PlayerCardsInitial());

  final GetPlayerCardsUseCase _getPlayerCardsUseCase;

  Future<void> getPlayerCards() async {
    emit(PlayerCardsLoading());
    final result = await _getPlayerCardsUseCase.call();
    if (result.isSuccess) {
      emit(PlayerCardsLoaded(result.data!));
    } else {
      emit(PlayerCardsFailure(result.error!));
    }
  }
}
