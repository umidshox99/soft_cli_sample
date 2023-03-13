import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/functions/base_functions.dart';
import 'package:soft_cli_sample/core/functions/phone_masked_text_input_formatter.dart';
import 'package:soft_cli_sample/domain/repository/auth_repository.dart';
import 'package:soft_cli_sample/routes/app_routes.dart';

import '../../routes/navigation_route.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final NavigationRoute _navigationRoute;
  final AuthRepository _repository;
  final maskedTextInputFormatter = PhoneMaskedTextInputFormatter(
    mask: Constants.phoneMask,
    separator: Constants.phoneSeparator,
  );

  final phoneController = TextEditingController();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();

  SignInCubit(this._navigationRoute, this._repository)
      : super(const SignInState());

  bool get canSignIn => phoneController.text.length == 12;

  void changePhone(String value) {
    emit(state.copyWith(errorPhone: false, phone: value));
  }

  void signIn({required String phone}) async {
    if (BaseFunctions.getWithOutSeparator(phone).length != 9) {
      emit(state.copyWith(errorPhone: true));
      return;
    }
    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(loading: false));
    await _repository.hasUser(true);
    // _navigationRoute.clearNavigateAll(Routes.verification,
    //     arguments: VerifyArguments(phone: state.phone, seconds: 120000));
  }

  void gotoMain() {
    _navigationRoute.navigateTo(Routes.main);
  }
}
