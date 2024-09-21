import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/routing/app_router.dart';
import 'package:valo_hub/core/routing/routes.dart';
import 'package:valo_hub/core/theme/app_themes.dart';

class ValoHub extends StatefulWidget {
  final AppRouter appRouter;
  const ValoHub({super.key, required this.appRouter});

  @override
  State<ValoHub> createState() => _ValoHubState();
}

class _ValoHubState extends State<ValoHub> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      HiveHelper.closeAllBoxes();
    }
  }

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
        onGenerateRoute: widget.appRouter.generateRoute,
        initialRoute:
            goToHomeScreen ? Routes.homeScreen : Routes.onBoardingScreen,
      ),
    );
  }
}
