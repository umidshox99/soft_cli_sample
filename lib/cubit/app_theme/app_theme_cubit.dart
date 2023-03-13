import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soft_cli_sample/core/theme/app_theme.dart';

class AppThemeCubit extends Cubit<ThemeData> {
  AppThemeCubit() : super(appLightThemeData);

  void toggleTheme() {
    if (state == appLightThemeData) {
      emit(appDarkThemeData);
    } else {
      emit(appLightThemeData);
    }
  }
}
