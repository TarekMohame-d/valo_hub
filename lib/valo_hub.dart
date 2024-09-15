import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/routing/app_router.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/themes/app_themes.dart';

class ValoHub extends StatelessWidget {
  final AppRouter appRouter;
  const ValoHub({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
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
        initialRoute: onBoarding ? Routes.homeScreen : Routes.onBoardingScreen,
      ),
    );
  }
}
