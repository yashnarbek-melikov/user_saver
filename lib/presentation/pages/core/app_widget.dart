import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../styles/theme.dart';
import 'home_control.dart';

class AppWidget extends StatelessWidget {
  final SharedPreferences preferences;
  const AppWidget({Key? key, required this.preferences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => GridTheme.create(preferences),
        builder: (BuildContext context, _) {
          return MaterialApp(
              builder: EasyLoading.init(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (_) => const HomeControl()));
        });
  }
}