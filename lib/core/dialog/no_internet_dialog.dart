import 'package:flutter_svg/svg.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';
import '../functions/app_functions.dart';

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppFunctions.width(context),
      height: Sizes.dimen_400,
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(AppSvg.noInternet),
          const Spacer(flex: Sizes.flex2),
          Text(
            "Internet bilan aloqa yo’q Iltimos sozlamalarni tekshiring",
            style: AppTextStyle.style600font28.copyWith(
              color: AppColor.black,
              fontSize: Sizes.dimen_16,
              height: Sizes.fontHeight5,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(
            height: Sizes.dimen_44,
            onTap: () {
              Navigator.of(context).pop(true);
            },
            radius: Sizes.dimen_8,
            text: "Tushunarli",
          )
        ],
      ),
    );
  }
}
