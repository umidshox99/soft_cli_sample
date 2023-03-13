part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) bool errorFirstname,
    @Default(false) bool errorLastname,
    @Default(false) bool errorPhone,
    @Default(false) bool loading,
    @Default("") String phone,
    @Default("") String lastname,
    @Default("") String firstname,
  }) = _SignUpState;
}
