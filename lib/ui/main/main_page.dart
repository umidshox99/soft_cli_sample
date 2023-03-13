import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soft_cli_sample/cubit/language/language_cubit.dart';
import 'package:soft_cli_sample/ui/main/home/home_screen.dart';
import 'package:soft_cli_sample/ui/main/widgets/bottom_navigation.dart';
import '../../cubit/main/main_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (mainContext, state) {
        final cubit = mainContext.read<MainCubit>();
        return WillPopScope(
          onWillPop: () async {
            exit(0);
          },
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, lanState) {
              return Scaffold(
                body: PageView(
                  onPageChanged: (int index) {
                    cubit.changeTab(index);
                  },
                  controller: cubit.pageController,
                  physics: const BouncingScrollPhysics(),
                  children:  [
                    HomeScreen(),
                    Container(),
                    Container(),
                  ],
                ),
                bottomNavigationBar: BottomNavigation(
                  index: state.index,
                  onTap: (index) {
                    cubit.changeTab(index, onlyIndex: true);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
