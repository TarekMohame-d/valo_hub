import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/sprays/presentation/cubit/sprays_cubit.dart';
import 'package:valo_hub/features/sprays/presentation/widgets/sprays_grid_view.dart';

class SpraysTabScreen extends StatelessWidget {
  const SpraysTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpraysCubit, SpraysState>(
      buildWhen: (previous, current) =>
          current is SpraysLoading ||
          current is SpraysLoaded ||
          current is SpraysFailure,
      builder: (context, state) {
        switch (state) {
          case SpraysLoading _:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case SpraysLoaded _:
            return SpraysGridView(sprays: state.sprays);
          case SpraysFailure _:
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
