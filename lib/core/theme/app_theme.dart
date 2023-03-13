import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soft_cli_sample/core/theme/size_constants.dart';
import 'app_colors.dart';

final ThemeData appLightThemeData = ThemeData.light().copyWith(
  primaryColor: AppColor.primary,
  appBarTheme: const AppBarTheme(
    elevation: Sizes.dimen_24,
    centerTitle: true,
    toolbarHeight: kToolbarHeight,
    backgroundColor: AppColor.background,
    // systemOverlayStyle: SystemUiOverlayStyle(
    //   statusBarColor: AppColor.grey,
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarBrightness: Brightness.light,
    // ),
  ),
  // colorScheme: ColorScheme(
  //   brightness: brightness,
  //   primary: primary,
  //   onPrimary: onPrimary,
  //   secondary: secondary,
  //   onSecondary: onSecondary,
  //   error: error,
  //   onError: onError,
  //   background: background,
  //   onBackground: onBackground,
  //   surface: surface,
  //   onSurface: onSurface,
  // ),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.background,
  backgroundColor: AppColor.background,
  dialogBackgroundColor: AppColor.primary,
);

final ThemeData appDarkThemeData = ThemeData.dark().copyWith(
  primaryColor: AppColor.assets,
  appBarTheme: const AppBarTheme(
    elevation: Sizes.dimen_24,
    centerTitle: true,
    toolbarHeight: kToolbarHeight,
    backgroundColor: AppColor.backgroundDark,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.assets,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  ),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.backgroundDark,
  backgroundColor: AppColor.backgroundDark,
  dialogBackgroundColor: AppColor.assets,
);
