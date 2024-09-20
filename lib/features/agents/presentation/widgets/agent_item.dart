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
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: getBackGroundColor(agent.backgroundGradientColors!),
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(1.0, 0.0),
            ),
            image: DecorationImage(
              image: CachedNetworkImageProvider(agent.background!),
              alignment: Alignment.bottomLeft,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image(
            image: CachedNetworkImageProvider(agent.fullPortrait!),
            height: 300.h,
            alignment: Alignment.bottomRight,
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            color: Colors.black.withOpacity(0.5),
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
      ],
    );
  }

  List<Color> getBackGroundColor(List<String> colorsList) {
    return colorsList.map((hexColor) {
      return Color(int.parse('0x$hexColor'));
    }).toList();
  }
}
