import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();

  static bool isDarkMode = true;

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.scaffoldBlackColor,
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: AppColors.scaffoldLightColor,
  );
}
