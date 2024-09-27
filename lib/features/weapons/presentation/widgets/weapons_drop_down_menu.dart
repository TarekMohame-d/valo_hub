import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/theme/app_colors.dart';
import 'package:valo_hub/core/theme/app_text_styles.dart';
import 'package:valo_hub/core/theme/custom_icons.dart';
import 'package:valo_hub/features/weapons/data/models/drop_menu_model.dart';
import 'package:valo_hub/features/weapons/presentation/cubit/weapons_cubit.dart';

class WeaponsDropDownMenu extends StatefulWidget {
  const WeaponsDropDownMenu({super.key});

  @override
  State<WeaponsDropDownMenu> createState() => _WeaponsDropDownMenuState();
}

class _WeaponsDropDownMenuState extends State<WeaponsDropDownMenu> {
  final List<DropMenuModel> items = [
    DropMenuModel(
      name: 'All',
      icon: Icons.change_circle_rounded,
    ),
    DropMenuModel(
      name: 'Rifle',
      icon: CustomIcons.weapon,
    ),
    DropMenuModel(
      name: 'SMG',
      icon: CustomIcons.smg,
    ),
    DropMenuModel(
      name: 'Heavy',
      icon: CustomIcons.heavy,
    ),
    DropMenuModel(
      name: 'Shotgun',
      icon: CustomIcons.shotgun,
    ),
    DropMenuModel(
      name: 'Sidearm',
      icon: CustomIcons.pistol,
    ),
    DropMenuModel(
      name: 'Sniper',
      icon: CustomIcons.sniper,
    ),
    DropMenuModel(
      name: 'Melee',
      icon: CustomIcons.knife,
    ),
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.brightCoralRed,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(
            'Category',
            style: AppTextStyles.font14WhiteRegular,
          ),
          onChanged: (String? newValue) {
            setState(() {
              value = newValue;
            });
            context.read<WeaponsCubit>().filterAgents(newValue!);
          },
          dropdownColor: Colors.grey,
          iconEnabledColor: Colors.white,
          value: value,
          borderRadius: BorderRadius.circular(12),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item.name,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name,
                          style: AppTextStyles.font14WhiteRegular,
                        ),
                        Icon(
                          item.icon,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
