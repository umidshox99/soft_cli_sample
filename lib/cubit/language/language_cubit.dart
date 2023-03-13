import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soft_cli_sample/routes/navigation_route.dart';

import '../../domain/repository/main_repository.dart';

part 'language_state.dart';

part 'language_cubit.freezed.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final MainRepository _mainRepository;
  final NavigationRoute _navigationRoute;

  LanguageCubit(this._navigationRoute, this._mainRepository)
      : super(
          LanguageState(
            locale: Locale(_mainRepository.getLanguage()),
          ),
        );

  changeLanguage(String language) async {
    print(language);
    print("language");
    emit(state.copyWith(loading: true));
    await _mainRepository.setLanguage(language);
    await EasyLocalization.of(_navigationRoute.navigatorKey.currentContext!)
        ?.setLocale(Locale(language));
    emit(state.copyWith(locale: Locale(language), loading: false));
  }
}
