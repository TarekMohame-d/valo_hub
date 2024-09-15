import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valo_hub/core/di/dependency_injection.dart';
import 'package:valo_hub/core/helpers/constants.dart';
import 'package:valo_hub/core/helpers/shared_pref_helper.dart';
import 'package:valo_hub/core/routing/app_router.dart';
import 'package:valo_hub/core/themes/app_themes.dart';
import 'package:valo_hub/valo_hub.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  onBoarding = await SharedPrefHelper.getBool(SharedPrefKeys.onBoarding);
  AppThemes.setSystemUIColor(AppThemes.isDarkMode);

  runApp(ValoHub(appRouter: AppRouter()));
}
