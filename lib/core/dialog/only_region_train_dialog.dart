import 'package:flutter_svg/svg.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';
import '../functions/app_functions.dart';

class OnlyRegionTrainDialog extends StatelessWidget {
  const OnlyRegionTrainDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppFunctions.width(context),
      height: Sizes.dimen_280,
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(
            AppSvg.info,
          ),
          const Spacer(),
          Text(
            "Faqat viloyatlararo poyezd qatnovlari\nuchun bilet sotib olish mumkin",
            style: AppTextStyle.style600font28.copyWith(
              color: AppColor.black,
              fontSize: Sizes.dimen_16,
              height: Sizes.fontHeight5,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: Sizes.flex2),
          CustomButton(
            height: Sizes.dimen_44,
            onTap: () {
              Navigator.of(context).pop(true);
            },
            margin: const EdgeInsets.symmetric(horizontal: Sizes.dimen_28),
            radius: Sizes.dimen_8,
            text: "Tushunarli",
          )
        ],
      ),
    );
  }
}
