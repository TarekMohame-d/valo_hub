import 'package:flutter/material.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/widgets/app_text_field.dart';

class VoiceAppBar extends StatelessWidget {
  const VoiceAppBar({super.key, required this.onSearchChanged});

  final ValueChanged<String> onSearchChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        Expanded(
          child: AppTextField(
            hintText: 'Search',
            borderRadius: BorderRadius.circular(12),
            suffixIcon: const Icon(Icons.search_outlined),
            style: AppTextStyles.font14BLackRegular.copyWith(
              decoration: TextDecoration.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            onChanged: onSearchChanged,
          ),
        ),
      ],
    );
  }
}
