import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/networking/api_error_model.dart';
import 'package:valo_hub/features/maps/domain/entities/map_entity.dart';
import 'package:valo_hub/features/maps/domain/usecases/get_maps_use_case.dart';

part 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  MapsCubit(this._getMapsUseCase) : super(MapsInitial());

  final GetMapsUseCase _getMapsUseCase;

  Future<void> getMaps() async {
    emit(MapsLoading());
    final result = await _getMapsUseCase();
    if (result.isSuccess) {
      emit(MapsLoaded(result.data!));
    } else {
      emit(MapsFailure(result.error!));
    }
  }
}
