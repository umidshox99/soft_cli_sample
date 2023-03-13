import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/theme/app_duration.dart';
import '../../core/theme/theme.dart';
import '../../data/model/place_info/place_info.dart';
import '../../domain/repository/main_repository.dart';
import '../../routes/navigation_route.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final NavigationRoute _navigationRoute;
  final MainRepository _repository;
  final CarouselController carouselController = CarouselController();

  HomeCubit(this._navigationRoute, this._repository)
      : super(const HomeState(currentIndex: 0)) {
    getData();
  }

  getData() async {
    emit(state.copyWith(loading: true));
    await Future.delayed(AppDuration.duration3);
    emit(state.copyWith(
      loading: false,
      data: [
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Sulton Saodat majmuasi",
        //   about: "Shifobaxsh ziyoratgoh",
        // ),
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Hakim Termiziy ziyoratgohi",
        //   about: "Islomiy ziyoratgoh",
        // ),
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Sulton Saodat majmuasi",
        //   about: "Shifobaxsh ziyoratgoh",
        // ),
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Hakim Termiziy ziyoratgohi",
        //   about: "Islomiy ziyoratgoh",
        // ),
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Sulton Saodat majmuasi",
        //   about: "Shifobaxsh ziyoratgoh",
        // ),
        // PlaceInfo(
        //   image: AppPng.defaultPlace,
        //   name: "Hakim Termiziy ziyoratgohi",
        //   about: "Islomiy ziyoratgoh",
        // ),
      ],
    ));
  }

  nextToPage(int index) {
    emit(state.copyWith(currentIndex: index));
    carouselController.animateToPage(index);
  }
}
