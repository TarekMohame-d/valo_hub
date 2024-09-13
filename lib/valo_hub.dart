import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/routing/app_router.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/themes/app_colors.dart';
import 'package:valo_hub/core/themes/app_themes.dart';

class ValoHub extends StatelessWidget {
  final AppRouter appRouter;
  const ValoHub({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = AppThemes.isDarkMode;
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: AppThemes.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
