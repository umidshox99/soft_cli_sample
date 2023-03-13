import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:soft_cli_sample/core/theme/app_colors.dart';

import "package:path_provider/path_provider.dart";
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/ui/app.dart';
import 'core/constants/easy_locale.dart';
import 'di/get_it.dart' as get_it;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  await Hive.openBox(Constants.credentialsBox);
  // await NotificationsService.initialize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColor.white, // status bar color
  ));
  get_it.init();
  runApp(
    ScreenUtilInit(
      designSize:  Size(375, 978),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return EasyLocalization(
          fallbackLocale: EasyLocale.all.first,
          supportedLocales: EasyLocale.all,
          path: Constants.localePath,
          startLocale: EasyLocale.all.first,
          child: const App(),
        );
      },
    ),
  );
}
