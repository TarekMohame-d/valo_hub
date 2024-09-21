import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/core/helpers/bloc_observer.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/hive_helper.dart';
import 'package:valo_hub/core/helpers/shared_pref_helper.dart';
import 'package:valo_hub/core/routing/app_router.dart';
import 'package:valo_hub/core/theme/app_themes.dart';
import 'package:valo_hub/valo_hub.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await HiveHelper.initHive();
  goToHomeScreen =
      await SharedPrefHelper.getBool(SharedPrefKeys.goToHomeScreen);
  AppThemes.setSystemUIColor(AppThemes.isDarkMode);
  Bloc.observer = MyBlocObserver();

  runApp(ValoHub(appRouter: AppRouter()));
}
