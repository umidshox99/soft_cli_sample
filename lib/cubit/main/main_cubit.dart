import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soft_cli_sample/routes/navigation_route.dart';

part 'main_state.dart';

part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  final NavigationRoute _navigationRoute;
  late PageController pageController = PageController(viewportFraction: 1.0);

  MainCubit(this._navigationRoute, {int index = 0})
      : super(MainState(index: index));

  void changeTab(int index, {bool onlyIndex = false}) {
    if (!onlyIndex) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    } else {
      pageController.jumpToPage(index);
    }
    emit(state.copyWith(index: index));
  }

  void goToNotification() {
    // _navigationRoute.navigateTo(Routes.notification);
  }
}
