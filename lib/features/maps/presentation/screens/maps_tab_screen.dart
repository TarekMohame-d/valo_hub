import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/maps/presentation/cubit/maps_cubit.dart';

class MapsTabScreen extends StatelessWidget {
  const MapsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapsCubit, MapsState>(
      buildWhen: (previous, current) =>
          current is MapsLoading ||
          current is MapsLoaded ||
          current is MapsFailure,
      builder: (context, state) {
        switch (state) {
          case MapsLoading _:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MapsLoaded _:
            return Center(
              child: Text(state.maps.length.toString()),
            );
          case MapsFailure _:
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
