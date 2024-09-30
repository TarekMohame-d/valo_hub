import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/player_cards/domain/entities/player_cards_entity.dart';
import 'package:valo_hub/features/player_cards/presentation/widgets/player_card_details_app_bar.dart';

class PlayerCardDetailsScreen extends StatelessWidget {
  const PlayerCardDetailsScreen({super.key, required this.playerCards});

  final PlayerCardsEntity playerCards;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlayerCardDetailsAppBar(
                  title: playerCards.displayName ?? 'N/A',
                ),
                Text(
                  'Small',
                  style: AppTextStyles.font14WhiteMedium,
                ),
                SizedBox(
                  width: 120.w,
                  child: CachedNetworkImage(
                    imageUrl: playerCards.smallArt ?? 'N/A',
                  ),
                ),
                Divider(
                  height: 20.h,
                ),
                Text(
                  'Wide',
                  style: AppTextStyles.font14WhiteMedium,
                ),
                SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: playerCards.wideArt ?? 'N/A',
                  ),
                ),
                Divider(
                  height: 20.h,
                ),
                Text(
                  'Large',
                  style: AppTextStyles.font14WhiteMedium,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: CachedNetworkImage(
                    imageUrl: playerCards.largeArt ?? 'N/A',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
