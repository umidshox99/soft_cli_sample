import 'package:easy_localization/easy_localization.dart';
import 'package:soft_cli_sample/core/constants/locale_keys.g.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../functions/app_functions.dart';

class BottomSheetTopView extends StatelessWidget {
  final String text;
  final bool showClear;
  final bool center;
  final GestureTapCallback? clear;

  const BottomSheetTopView(
      {Key? key,
      required this.text,
      this.clear,
      this.showClear = false,
      this.center = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: Sizes.dimen_4,
          width: Sizes.dimen_64,
          margin: EdgeInsets.only(
              top: Sizes.dimen_16,
              left: (AppFunctions.width(context) - Sizes.dimen_48) / 2,
              right: (AppFunctions.width(context) - Sizes.dimen_48) / 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_2),
            color: AppColor.assets,
          ),
        ),
        if (text.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(
              left: Sizes.dimen_16,
              right: Sizes.dimen_16,
              top: Sizes.dimen_16,
              bottom: Sizes.dimen_4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: AppTextStyle.style500font14.copyWith(
                    fontSize: Sizes.dimen_24,
                    color: AppColor.assets,
                  ),
                  textAlign: center ? TextAlign.center : null,
                ),
                if (showClear)
                  GestureDetector(
                    onTap: clear,
                    child: Text(
                      LocaleKeys.cancel.tr(),
                      style: AppTextStyle.style400font12.copyWith(
                        fontSize: Sizes.dimen_14,
                      ),
                    ),
                  )
              ],
            ),
          ),
      ],
    );
  }
}
