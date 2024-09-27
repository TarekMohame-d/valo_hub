import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/weapons/presentation/cubit/weapons_cubit.dart';
import 'package:valo_hub/features/weapons/presentation/widgets/weapons_list_view.dart';

class WeaponsBlocBuilder extends StatelessWidget {
  const WeaponsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeaponsCubit, WeaponsState>(
      buildWhen: (previous, current) =>
          current is WeaponsLoading ||
          current is WeaponsLoaded ||
          current is WeaponsFailure,
      builder: (context, state) {
        switch (state) {
          case WeaponsLoading _:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case WeaponsLoaded _:
            return WeaponsListView(
              weapons: state.weapons,
            );
          case WeaponsFailure _:
            return Center(
              child: Text(state.errorModel.statusMessage!),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
