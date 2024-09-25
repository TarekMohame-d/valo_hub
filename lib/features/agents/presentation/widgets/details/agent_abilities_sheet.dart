import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/domain/entities/agents_entity.dart';
import 'package:valo_hub/features/agents/presentation/widgets/details/agent_abilities_widget.dart';

class AgentAbilitiesSheet extends StatelessWidget {
  const AgentAbilitiesSheet({
    super.key,
    required this.agent,
  });

  final AgentsEntity agent;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.2,
      maxChildSize: 0.7,
      minChildSize: 0.1,
      expand: true,
      builder: (context, scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
                border: const Border(
                  top: BorderSide(
                    color: AppColors.crimsonRed,
                    width: 5,
                  ),
                ),
                color: Colors.black.withOpacity(0.6),
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          verticalSpace(8),
                          Container(
                            width: 70.w,
                            height: 3.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.soft.withOpacity(0.25),
                            ),
                          ),
                          verticalSpace(20),
                          Text(
                            agent.displayName!,
                            style: AppTextStyles.font20WhiteBold,
                          ),
                          verticalSpace(20),
                          Text(
                            agent.description!,
                            style: AppTextStyles.font14WhiteRegular,
                          ),
                          verticalSpace(20),
                          AgentAbilitiesWidget(
                            abilities: agent.abilities!,
                            role: agent.role!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
