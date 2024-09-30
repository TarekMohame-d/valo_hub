import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo_hub/features/player_cards/presentation/cubit/player_cards_cubit.dart';
import 'package:valo_hub/features/player_cards/presentation/widgets/player_cards_list_view.dart';

class PlayerCardsTabScreen extends StatelessWidget {
  const PlayerCardsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCardsCubit, PlayerCardsState>(
      buildWhen: (previous, current) =>
          current is PlayerCardsLoading ||
          current is PlayerCardsLoaded ||
          current is PlayerCardsFailure,
      builder: (context, state) {
        switch (state) {
          case PlayerCardsLoading _:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case PlayerCardsLoaded _:
            return PlayerCardsListView(cards: state.playerCards);
          case PlayerCardsFailure _:
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
