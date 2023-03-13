import 'dart:io';
import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/functions/app_functions.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionalUpdateDialog extends StatefulWidget {
  const OptionalUpdateDialog({Key? key}) : super(key: key);

  @override
  State<OptionalUpdateDialog> createState() => _OptionalUpdateDialogState();
}

class _OptionalUpdateDialogState extends State<OptionalUpdateDialog> {
  bool doNotAskAgain = false;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(
          LocaleKeys.appUpdateAvailable.tr(),
          style: AppTextStyle.appBarTitle.copyWith(
            color: AppColor.assets,
          ),
        ),
        content: Text(
          LocaleKeys.available.tr(),
          style: AppTextStyle.appBarTitle.copyWith(
            color: AppColor.assets,
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
          CupertinoDialogAction(
            child: Text(
              LocaleKeys.doNot.tr(),
              style: AppTextStyle.style500font14.copyWith(
                fontSize: Sizes.dimen_15,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          CupertinoDialogAction(
            onPressed: Navigator.of(context).pop,
            child: Text(
              LocaleKeys.later.tr(),
              style: AppTextStyle.style500font14.copyWith(
                color: AppColor.black,
                fontSize: Sizes.dimen_15,
              ),
            ),
          ),
        ],
      );
    }
    return AlertDialog(
      elevation: Sizes.dimen_2,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Sizes.dimen_16,
        vertical: Sizes.dimen_32,
      ),
      backgroundColor: AppColor.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.dimen_8),
      ),
      title: Column(
        children: [
          Text(
            LocaleKeys.appUpdateAvailable.tr(),
            style: AppTextStyle.appBarTitle.copyWith(
              color: AppColor.assets,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: FittedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LocaleKeys.available.tr(),
              style: AppTextStyle.appBarTitle.copyWith(
                color: AppColor.assets,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Sizes.dimen_12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                    value: doNotAskAgain,
                    checkColor: AppColor.secondary,
                    activeColor: AppColor.assets,
                    onChanged: (value) {
                      setState(() {
                        doNotAskAgain = value ?? false;
                      });
                    }),
                const SizedBox(
                  width: Sizes.dimen_8,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      doNotAskAgain = !doNotAskAgain;
                    });
                  },
                  child: Text(
                    LocaleKeys.doNot.tr(),
                    style: AppTextStyle.style500font14.copyWith(
                      fontSize: Sizes.dimen_15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          padding: EdgeInsets.zero,
          child: Text(
            LocaleKeys.cancel.tr(),
            style: AppTextStyle.style500font14.copyWith(
              color: AppColor.black,
              fontSize: Sizes.dimen_15,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop(doNotAskAgain);
          },
        ),
        MaterialButton(
          padding: EdgeInsets.zero,
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
    );
  }
}
