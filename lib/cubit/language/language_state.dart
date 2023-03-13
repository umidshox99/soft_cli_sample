part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    @Default(false) bool loading,
    required Locale locale,
}) = _LanguageState;
}
