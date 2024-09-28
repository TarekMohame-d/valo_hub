part of 'weapons_cubit.dart';

@immutable
sealed class WeaponsState {}

final class WeaponsInitial extends WeaponsState {}

final class WeaponsLoading extends WeaponsState {}

final class WeaponsLoaded extends WeaponsState {
  final List<WeaponEntity> weapons;

  WeaponsLoaded(this.weapons);
}

final class WeaponsFailure extends WeaponsState {
  final ApiErrorModel errorModel;

  WeaponsFailure(this.errorModel);
}
