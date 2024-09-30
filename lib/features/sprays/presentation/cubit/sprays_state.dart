part of 'sprays_cubit.dart';

@immutable
sealed class SpraysState {}

final class SpraysInitial extends SpraysState {}

final class SpraysLoading extends SpraysState {}

final class SpraysLoaded extends SpraysState {
  final List<SprayEntity> sprays;

  SpraysLoaded(this.sprays);
}

final class SpraysFailure extends SpraysState {
  final ApiErrorModel errorModel;

  SpraysFailure(this.errorModel);
}
