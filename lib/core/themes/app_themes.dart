import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();

  static bool isDarkMode = true;

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.scaffoldDarkColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.crimsonRed,
      unselectedItemColor: AppColors.soft,
      enableFeedback: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      backgroundColor: AppColors.bottomNavigationBar,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
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
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
        statusBarIconBrightness:
            isDarkTheme ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDarkTheme
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
        systemNavigationBarIconBrightness:
            isDarkTheme ? Brightness.light : Brightness.dark,
        systemNavigationBarDividerColor: isDarkTheme
            ? AppColors.scaffoldDarkColor
            : AppColors.scaffoldLightColor,
      ),
    );
  }
}
