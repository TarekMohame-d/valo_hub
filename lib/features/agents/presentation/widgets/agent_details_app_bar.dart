import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/extensions.dart';

class AgentDetailsAppBar extends StatelessWidget {
  const AgentDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
              print('Voice Lines');
            },
            child: const Row(
              children: [
                Text(
                  'Voice Lines',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.music_note,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
