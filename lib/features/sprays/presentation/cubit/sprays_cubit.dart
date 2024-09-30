import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/networking/api_error_model.dart';
import 'package:valo_hub/features/sprays/domain/entities/spray_entity.dart';
import 'package:valo_hub/features/sprays/domain/usecases/get_sprays_use_case.dart';

part 'sprays_state.dart';

class SpraysCubit extends Cubit<SpraysState> {
  SpraysCubit(this._getSpraysUseCase) : super(SpraysInitial());

  final GetSpraysUseCase _getSpraysUseCase;

  Future<void> getSprays() async {
    emit(SpraysLoading());
    final result = await _getSpraysUseCase();
    if (result.isSuccess) {
      emit(SpraysLoaded(result.data!));
    } else {
      emit(SpraysFailure(result.error!));
    }
  }
}
