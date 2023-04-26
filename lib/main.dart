import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_saver/presentation/pages/core/app_widget.dart';

import 'domain/common/app_init.dart';

void main() async {

  await AppInit().appInitialized();
  final SharedPreferences sharedPref = await SharedPreferences.getInstance();

  runApp(
    ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
        return EasyLocalization(
          supportedLocales: const [Locale('en', 'US')],
          path: 'assets/translation',
          fallbackLocale: const Locale('en', 'US'),
          child: AppWidget(
            preferences: sharedPref,
          ),
        );
    })
  );
}
