import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';

class AgentDetailsAppBar extends StatelessWidget {
  const AgentDetailsAppBar({
    super.key,
    required this.agentName,
  });

  final String agentName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0.w),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(Routes.agentVoiceLinesScreen,
                    arguments: agentName);
              },
              child: Row(
                children: [
                  Text(
                    'Voice Lines',
                    style: AppTextStyles.font14WhiteRegular,
                  ),
                  const Icon(
                    Icons.music_note,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
