import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/functions/app_functions.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompulsoryUpdateDialog extends StatelessWidget {
  const CompulsoryUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text(
              LocaleKeys.updateDialog.tr(),
              style: AppTextStyle.appBarTitle.copyWith(color: AppColor.assets),
            ),
            content: Text(
              LocaleKeys.pleaseUpdate.tr(),
              style: AppTextStyle.style500font14.copyWith(
                color: AppColor.assets,
                fontSize: Sizes.dimen_15,
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                isDefaultAction: true,
                onPressed: AppFunctions.launchStore,
                child: Text(
                  LocaleKeys.updateNow.tr(),
                  style: AppTextStyle.style500font14.copyWith(
                    color: AppColor.assets,
                    fontSize: Sizes.dimen_15,
                  ),
                ),
              ),
            ],
          )
        : AlertDialog(
            elevation: Sizes.dimen_2,
            backgroundColor: AppColor.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Sizes.dimen_8,
              ),
            ),
            title: Text(
              LocaleKeys.updateDialog.tr(),
              style: AppTextStyle.appBarTitle.copyWith(
                color: AppColor.assets,
              ),
              textAlign: TextAlign.center,
            ),
            content: Text(
              LocaleKeys.pleaseUpdate.tr(),
              style: AppTextStyle.appBarTitle.copyWith(
                color: AppColor.assets,
              ),
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: AppFunctions.launchStore,
                child: Text(
                  LocaleKeys.updateNow.tr(),
                  style: AppTextStyle.style500font14.copyWith(
                    color: AppColor.assets,
                    fontSize: Sizes.dimen_15,
                  ),
                ),
              )
            ],
          );
  }
}
