part of 'sign_in_cubit.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool errorPassword,
    @Default(false) bool errorPhone,
    @Default(false) bool loading,
    @Default("") String phone,
  }) = _SignInState;
}
