import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';

class PlayerCardsGridViewItem extends StatelessWidget {
  const PlayerCardsGridViewItem({super.key, required this.playerCards});
  final PlayerCardsEntity playerCards;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.playerCardDetailsScreen,
            arguments: playerCards);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.brightCoralRed,
            width: 1,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CachedNetworkImage(
              imageUrl: playerCards.largeArt ?? 'N/A',
              errorWidget: (context, url, error) => const Icon(Icons.error),
              memCacheHeight:
                  (350.h * MediaQuery.of(context).devicePixelRatio).round(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                ),
                child: Text(
                  playerCards.displayName ?? 'N/A',
                  style: AppTextStyles.font14WhiteRegular,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
