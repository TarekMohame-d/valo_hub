part of 'maps_cubit.dart';

@immutable
sealed class MapsState {}

final class MapsInitial extends MapsState {}

final class MapsLoading extends MapsState {}

final class MapsLoaded extends MapsState {
  final List<MapEntity> maps;

  MapsLoaded(this.maps);
}

final class MapsFailure extends MapsState {
  final ApiErrorModel errorModel;

  MapsFailure(this.errorModel);
}
