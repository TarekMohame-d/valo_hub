import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/functions/extract_color.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

class AgentsItem extends StatelessWidget {
  const AgentsItem({
    super.key,
    required this.agent,
  });

  final AgentsEntity agent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.pushNamed(Routes.agentDetailsScreen, arguments: agent);
      },
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  colors: getBackGroundColor(
                    agent.backgroundGradientColors!,
                    opacity: 0.7,
                  ),
                  begin: const FractionalOffset(0.0, 1.0),
                  end: const FractionalOffset(1.0, 0.0),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CachedNetworkImage(
              imageUrl: agent.background!,
              height: 150.h,
              memCacheHeight:
                  (150.h * MediaQuery.of(context).devicePixelRatio).round(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Positioned(
            bottom: 0.h,
            right: -95.w,
            child: CachedNetworkImage(
              height: 300.h,
              imageUrl: agent.fullPortrait!,
              memCacheHeight:
                  (300.h * MediaQuery.of(context).devicePixelRatio).round(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Text(
                agent.displayName!,
                style: AppTextStyles.font16WhiteBold,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
