import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';

import '../../presentation/styles/style.dart';

class AppInit{

  Future<void> appInitialized()async{
    WidgetsFlutterBinding.ensureInitialized();
    Directory appDocDirectory = await getApplicationDocumentsDirectory();

    Directory(appDocDirectory.path+'/'+'dir').create(recursive: true)
        .then((Directory directory) {
      Hive.init(directory.path);
    });
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    _setupLogging();
    configLoading();
  }

  void _setupLogging() => Logger.root
    ..level = kDebugMode ? Level.ALL : Level.WARNING
    ..onRecord.listen((record) => debugPrint(
      '${record.level.name}: '
          '${record.time} '
          '${record.loggerName}: '
          '${record.message}',
    ));


  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(seconds: 1)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Style.primary.withOpacity(0.4)
      ..errorWidget
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Style.primary.withOpacity(0.2)
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}