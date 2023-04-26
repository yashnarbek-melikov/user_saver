
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/core/app_widget.dart';

class Routes {
  static MaterialPageRoute getAppWidget(SharedPreferences preferences) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          preferences: preferences,
        ),
      );
}