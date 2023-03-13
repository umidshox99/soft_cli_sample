import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';

import '../custom_widgets/custom_button.dart';
import '../functions/app_functions.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppFunctions.width(context) - Sizes.dimen_48,
      height: Sizes.dimen_256,
      child: Column(
        children: [
          Container(
            height: Sizes.dimen_64,
            width: Sizes.dimen_64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Sizes.dimen_16,
              ),
              border: Border.all(color: AppColor.black),
            ),
            padding: const EdgeInsets.only(left: Sizes.dimen_4),
            child: const Center(
              child: Icon(
                Icons.login_outlined,
                color: AppColor.black,
                size: Sizes.dimen_32,
              ),
            ),
          ),
          const Spacer(
            flex: Sizes.flex,
          ),
          Text(
            LocaleKeys.warning.tr(),
            style: AppTextStyle.style600font28.copyWith(color: AppColor.textBtColor, fontSize: Sizes.dimen_24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Sizes.dimen_8,
          ),
          Text(
            LocaleKeys.accountDelete.tr(),
            style: AppTextStyle.style400font12.copyWith(
              color: AppColor.black50,
              fontSize: Sizes.dimen_16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: Sizes.flex2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomButton(
                    height: Sizes.dimen_44,
                    onTap: () {
                      Navigator.of(context).pop(false);
                    },
                    backgroundColor: AppColor.assets,
                    fontColor: AppColor.primary,
                    radius: Sizes.dimen_8,
                    text: LocaleKeys.cancel.tr(),
                  ),
                ),
                const SizedBox(
                  width: Sizes.dimen_16,
                ),
                Expanded(
                  child: CustomButton(
                    height: Sizes.dimen_44,
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    backgroundColor: AppColor.red,
                    fontColor: AppColor.primary,
                    radius: Sizes.dimen_8,
                    text: LocaleKeys.deleteAccount.tr(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
