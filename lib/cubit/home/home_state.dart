part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool loading,
    @Default([]) List<PlaceInfo> data,
    required int currentIndex,
  }) = _HomeState;
}
