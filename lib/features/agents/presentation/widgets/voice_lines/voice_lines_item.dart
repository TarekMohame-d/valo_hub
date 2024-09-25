import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_audio/just_audio.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/widgets/spacing.dart';
import 'package:valo_hub/features/agents/domain/entities/agent_voice_entity.dart';

class VoiceLinesItem extends StatelessWidget {
  const VoiceLinesItem({
    super.key,
    required this.agentVoice,
    required this.player,
  });

  final AgentVoiceEntity agentVoice;
  final AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            AppColors.brightCoralRed,
            AppColors.crimsonRed,
            AppColors.darkMaroon,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () async {
              await player.setUrl(agentVoice.audioLink!);
              await player.play();
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: AppColors.soft,
            ),
          ),
          verticalSpace(12),
          Expanded(
            child: Text(
              agentVoice.quotes!,
              style: AppTextStyles.font14WhiteRegular,
            ),
          ),
        ],
      ),
    );
  }
}
