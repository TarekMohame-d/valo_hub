import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/data/models/agents_model.dart';
import 'package:valo_hub/features/agents/presentation/widgets/details/ability_item.dart';

class AgentAbilitiesWidget extends StatefulWidget {
  const AgentAbilitiesWidget(
      {super.key, required this.abilities, required this.role});

  final List<Abilities> abilities;
  final Role role;

  @override
  State<AgentAbilitiesWidget> createState() => _AgentAbilitiesWidgetState();
}

class _AgentAbilitiesWidgetState extends State<AgentAbilitiesWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.16,
          ),
          child: Row(
            children: List.generate(
              widget.abilities.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: AbilityItem(
                    img: widget.abilities[index].displayIcon ?? '',
                    color: index == currentIndex
                        ? AppColors.brightCoralRed
                        : AppColors.soft,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              Text(
                widget.abilities[currentIndex].displayName!,
                style: AppTextStyles.font20WhiteBold,
              ),
              verticalSpace(20),
              Text(
                widget.abilities[currentIndex].description!,
                style: AppTextStyles.font14WhiteRegular,
              ),
            ],
          ),
        ),
        Divider(
          height: 40.h,
          thickness: 3,
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.role.displayIcon ?? '',
                    height: 30.h,
                    width: 30.h,
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                    ),
                  ),
                  horizontalSpace(8),
                  Text(
                    widget.role.displayName!,
                    style: AppTextStyles.font20WhiteBold,
                  ),
                ],
              ),
              verticalSpace(20),
              Text(
                widget.role.description!,
                style: AppTextStyles.font14WhiteRegular,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
