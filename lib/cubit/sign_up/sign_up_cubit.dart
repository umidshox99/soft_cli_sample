import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/functions/base_functions.dart';
import 'package:soft_cli_sample/core/functions/phone_masked_text_input_formatter.dart';
import 'package:soft_cli_sample/domain/repository/auth_repository.dart';

import '../../routes/navigation_route.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final NavigationRoute _navigationRoute;
  final AuthRepository _repository;
  final maskedTextInputFormatter = PhoneMaskedTextInputFormatter(
    mask: Constants.phoneMask,
    separator: Constants.phoneSeparator,
  );

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final phoneController = TextEditingController();

  final phoneFocus = FocusNode();
  final firstnameFocus = FocusNode();
  final lastnameFocus = FocusNode();

  SignUpCubit(this._navigationRoute, this._repository)
      : super(const SignUpState());

  bool get canSignUp =>
      firstnameController.text.isNotEmpty &&
      lastnameController.text.isNotEmpty &&
      phoneController.text.isNotEmpty;

  void changeFirstname(String value) {
    emit(state.copyWith(errorFirstname: false, firstname: value));
  }

  void changeLastname(String value) {
    emit(state.copyWith(errorLastname: false, lastname: value));
  }

  void sendCode(
      {required String phone,
      required String firstname,
      required String lastname}) async {
    if (firstname.isEmpty) {
      emit(state.copyWith(errorFirstname: true));
      return;
    }
    if (lastname.isEmpty) {
      emit(state.copyWith(errorLastname: true));
      return;
    }
    if (BaseFunctions.getWithOutSeparator(phone).length != 9) {
      emit(state.copyWith(errorPhone: true));
      return;
    }
    // final hash = await SmsAutoFill().getAppSignature;
    // _navigationRoute.navigateTo(
    //   Routes.verification,
    //   // arguments: VerifyArguments(
    //   //   phone: phone,
    //   //   firstname: firstname,
    //   //   lastname: lastname,
    //   //   isSingUp: true,
    //   // ),
    // );
  }

  void changePhone(String value) {
    emit(state.copyWith(errorPhone: false, phone: value));
  }
}
