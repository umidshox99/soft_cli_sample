import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/dialog/cumpolsary_update_dialog.dart';
import 'package:soft_cli_sample/core/dialog/logout_dialog.dart';
import 'package:soft_cli_sample/core/dialog/no_internet_dialog.dart';
import 'package:soft_cli_sample/core/dialog/only_region_train_dialog.dart';
import 'package:soft_cli_sample/core/dialog/optinal_update_dialog.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'delete_account_dialog.dart';
import 'enable_location_service_dialog.dart';

mixin BaseDialogs {
  Future<bool?> showEnableLocationDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: WillPopScope(
              onWillPop: () async => false,
              child: AlertDialog(
                elevation: Sizes.dimen_2,
                contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16, vertical: Sizes.dimen_24),
                backgroundColor: AppColor.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Sizes.dimen_16),
                ),
                content: const FittedBox(child: EnableLocationServiceDialog()),
              ),
            ),
          ),
        );
      },
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  static Future<bool?> showNoInternetDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              elevation: Sizes.dimen_2,
              contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_32, vertical: Sizes.dimen_24),
              backgroundColor: AppColor.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.dimen_16),
              ),
              content: const NoInternetDialog(),
            ),
          ),
        );
      },
      barrierDismissible: true,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  Future<bool?> showOnlyRegionTrainDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
              elevation: Sizes.dimen_2,
              contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_32, vertical: Sizes.dimen_40),
              backgroundColor: AppColor.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.dimen_8),
              ),
              content: const OnlyRegionTrainDialog(),
            ),
          ),
        );
      },
      barrierDismissible: true,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  Future<bool?>? showLogoutDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              elevation: Sizes.dimen_2,
              contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16, vertical: Sizes.dimen_24),
              backgroundColor: AppColor.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.dimen_16),
              ),
              content: const LogoutDialog(),
            ),
          ),
        );
      },
      barrierDismissible: true,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  Future<bool?>? showDeleteAccountDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: AlertDialog(
              elevation: Sizes.dimen_2,
              contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16, vertical: Sizes.dimen_24),
              backgroundColor: AppColor.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.dimen_16),
              ),
              content: const DeleteAccountDialog(),
            ),
          ),
        );
      },
      barrierDismissible: true,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  Future<bool?> showOptionalUpdateDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: const OptionalUpdateDialog(),
            ),
          ),
        );
      },
      barrierDismissible: false,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }

  Future<bool?> showCompulsoryUpdateDialog(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) => const SizedBox(),
      transitionBuilder: (context, a1, a2, widget) {
        final curvedValue = Curves.easeOut.transform(a1.value) - 1.0;
        return Transform(
          transform: Matrix4.translationValues(Sizes.dimen_0, curvedValue * Sizes.dimen_200, Sizes.dimen_0),
          child: Opacity(
            opacity: a1.value,
            child: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: const CompulsoryUpdateDialog(),
            ),
          ),
        );
      },
      barrierDismissible: false,
      barrierLabel: Constants.empty,
      transitionDuration: AppDuration.duration_4,
      barrierColor: AppColor.black.withOpacity(Constants.dialogOpacity),
    );
  }
}
