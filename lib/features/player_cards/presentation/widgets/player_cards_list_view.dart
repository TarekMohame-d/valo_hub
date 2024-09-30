import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/presentation/widgets/player_cards_list_view_item.dart';

class PlayerCardsListView extends StatelessWidget {
  const PlayerCardsListView({super.key, required this.cards});

  final List<PlayerCardsEntity> cards;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 2 / 4,
        mainAxisExtent: 350.h,
      ),
      itemBuilder: (context, index) =>
          PlayerCardsListViewItem(playerCards: cards[index]),
    );
  }
}
