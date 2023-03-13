import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';
import '../functions/app_functions.dart';

class EnableLocationServiceDialog extends StatelessWidget {
  const EnableLocationServiceDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppFunctions.width(context) - Sizes.dimen_48,
      height: Sizes.dimen_252,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_4),
        child: Column(
          children: [
            Container(
              height: Sizes.dimen_72,
              width: Sizes.dimen_72,
              decoration: BoxDecoration(
                color: AppColor.secondary,
                borderRadius: BorderRadius.circular(
                  Sizes.dimen_16,
                ),
                boxShadow: AppShadow.shadow1,
              ),
              child: const Center(
                child: Icon(
                  Icons.location_on,
                  size: Sizes.dimen_32,
                ),
              ),
            ),
            const Spacer(),
            Text(
              LocaleKeys.warning.tr(),
              style: AppTextStyle.style500font14.copyWith(color: AppColor.assets, fontSize: Sizes.dimen_20),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Text(
              LocaleKeys.accountDelete.tr(),
              style: AppTextStyle.style400font12.copyWith(
                color: AppColor.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: Sizes.flex2,
            ),
            CustomButton(
              height: Sizes.dimen_44,
              onTap: () {
                Navigator.of(context).pop(true);
              },
              radius: Sizes.dimen_8,
              text: LocaleKeys.accountDelete.tr(),
            )
          ],
        ),
      ),
    );
  }
}
