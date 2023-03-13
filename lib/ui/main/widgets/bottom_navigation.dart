import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:soft_cli_sample/data/extensions/widget_padding_extension.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key, required this.index, required this.onTap})
      : super(key: key);

  final int index;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: AppShadow.shadow1,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(32.0), topLeft: Radius.circular(32.0)),
        color: AppColor.red,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColor.primaryRed,
          currentIndex: index,
          onTap: onTap,
          elevation: Sizes.dimen_0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: AppColor.white,
          selectedItemColor: AppColor.white,
          selectedLabelStyle: AppTextStyle.style400font13grey3.copyWith(
            color: AppColor.white,
          ),
          unselectedLabelStyle: AppTextStyle.style500font12grey4.copyWith(
            color: AppColor.white,
            fontSize: Sizes.dimen_11,
          ),
          items: <BottomNavigationBarItem>[
            _buildMenuItem(
              iconPath: AppSvg.icMain,
              secondPath: AppSvg.icMain,
              title: LocaleKeys.main.tr(),
            ),
            _buildMenuItem(
              iconPath: AppSvg.icTask,
              title: LocaleKeys.tasks.tr(),
            ),
            _buildMenuItem(
              iconPath: AppSvg.icProfile,
              title: LocaleKeys.profile.tr(),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildMenuItem({
    required String iconPath,
    required String title,
    String? secondPath,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        secondPath ?? iconPath,
        color: AppColor.white,
        height: Sizes.dimen_24,
        width: Sizes.dimen_24,
      ).paddingOnly(top: Sizes.dimen_6, bottom: Sizes.dimen_4),
      activeIcon: SvgPicture.asset(
        iconPath,
        color: AppColor.white,
        height: Sizes.dimen_24,
        width: Sizes.dimen_24,
      ).paddingOnly(top: Sizes.dimen_6, bottom: Sizes.dimen_4),
      label: title,
      backgroundColor: AppColor.transparent,
      tooltip: title,
    );
  }
}
