import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soft_cli_sample/core/dialog/base_dialogs.dart';

import '../../domain/repository/main_repository.dart';
import '../../routes/navigation_route.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> with BaseDialogs {
  final NavigationRoute _navigationRoute;
  final MainRepository _repository;

  ProfileCubit(this._navigationRoute, this._repository)
      : super(const ProfileState());

  bool get hasUser => _repository.hasUser();



  void share() {}

  void openGift() {}


  void deleteAccount() async {
    if (await showDeleteAccountDialog(
            _navigationRoute.navigatorKey.currentContext!) ==
        true) {
      _logout();
    }
  }

  void exit() async {
    if (await showLogoutDialog(_navigationRoute.navigatorKey.currentContext!) ==
        true) {
      _logout();
    }
  }

  void _logout() async {
    emit(state.copyWith(loading: true));
    await _repository.logout();
    emit(state.copyWith(loading: false));
    // _navigationRoute.clearNavigateAll(Routes.intro);
  }
}
