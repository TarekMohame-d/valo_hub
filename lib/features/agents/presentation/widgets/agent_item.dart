import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';

class AgentsItem extends StatelessWidget {
  const AgentsItem({
    super.key,
    required this.agent,
  });

  final AgentsEntity agent;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          bottom: 0.h,
          right: -95.w,
          child: CachedNetworkImage(
            imageUrl: agent.fullPortrait!,
            height: 300.h,
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
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  List<Color> getBackGroundColor(List<String> colorsList,
      {double opacity = 1.0}) {
    return colorsList.map((hexColor) {
      int colorWithoutAlpha = int.parse('0xFF${hexColor.substring(0, 6)}');
      return Color(colorWithoutAlpha).withOpacity(opacity);
    }).toList();
  }
}
