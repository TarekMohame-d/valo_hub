import 'package:flutter/material.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';

Widget buildStatRow(String title, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.font14WhiteRegular,
        ),
        Text(
          value?.toString() ?? 'N/A',
          style: AppTextStyles.font14WhiteRegular,
        ),
      ],
    );
  }