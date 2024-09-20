import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'weapons_state.dart';

class WeaponsCubit extends Cubit<WeaponsState> {
  WeaponsCubit() : super(WeaponsInitial());
}
