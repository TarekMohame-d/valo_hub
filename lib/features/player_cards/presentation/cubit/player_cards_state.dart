part of 'player_cards_cubit.dart';

@immutable
sealed class PlayerCardsState {}

final class PlayerCardsInitial extends PlayerCardsState {}

final class PlayerCardsLoading extends PlayerCardsState {}

final class PlayerCardsLoaded extends PlayerCardsState {
  final List<PlayerCardsEntity> playerCards;
  PlayerCardsLoaded(this.playerCards);
}

final class PlayerCardsFailure extends PlayerCardsState {
  final ApiErrorModel errorModel;
  PlayerCardsFailure(this.errorModel);
}