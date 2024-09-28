import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/networking/api_error_model.dart';
import 'package:valo_hub/features/weapons/domain/entities/weapon_entity.dart';
import 'package:valo_hub/features/weapons/domain/usecases/get_weapons_use_case.dart';

part 'weapons_state.dart';

class WeaponsCubit extends Cubit<WeaponsState> {
  WeaponsCubit(this._getWeaponsUseCase) : super(WeaponsInitial());

  final GetWeaponsUseCase _getWeaponsUseCase;
  List<WeaponEntity> weapons = [];
  List<WeaponEntity> filteredAgentsList = [];

  Future<void> getWeapons() async {
    emit(WeaponsLoading());
    final result = await _getWeaponsUseCase.call();
    if (result.isSuccess) {
      weapons = result.data!;
      emit(WeaponsLoaded(weapons));
    } else {
      emit(WeaponsFailure(result.error!));
    }
  }

  void filterAgents(String query) {
    if (weapons.isNullOrEmpty()) {
      return;
    }
    filteredAgentsList = _getWeaponsUseCase.filterAgents(weapons, query);
    emit(WeaponsLoaded(filteredAgentsList));
  }
}
