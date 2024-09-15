import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  static void setSystemUIColor(bool isDarkTheme) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: isDarkTheme
            ? AppColors.scaffoldBlackColor
            : AppColors.scaffoldLightColor,
        statusBarIconBrightness:
            isDarkTheme ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDarkTheme
            ? AppColors.scaffoldBlackColor
            : AppColors.scaffoldLightColor,
        systemNavigationBarIconBrightness:
            isDarkTheme ? Brightness.light : Brightness.dark,
        systemNavigationBarDividerColor: isDarkTheme
            ? AppColors.scaffoldBlackColor
            : AppColors.scaffoldLightColor,
      ),
    );
  }
}
