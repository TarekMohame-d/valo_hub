import 'package:flutter/material.dart';
import 'package:valo_hub/core/helpers/extensions.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';

class PlayerCardDetailsAppBar extends StatelessWidget {
  const PlayerCardDetailsAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: AppTextStyles.font16WhiteBold,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
