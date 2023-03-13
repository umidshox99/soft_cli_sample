import 'package:lottie/lottie.dart';
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/theme/app_lottie.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? fontColor;
  final String text;
  final VoidCallback? onTap;
  final bool canClick;
  final bool isLoading;
  final double? width;
  final double radius;
  final double? textSize;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxBorder? border;
  final FontWeight? fontWeight;

  const CustomButton({
    this.text = Constants.empty,
    this.radius = Sizes.dimen_12,
    required this.onTap,
    this.backgroundColor = AppColor.primaryRed,
    this.fontColor = AppColor.primary,
    this.width = double.infinity,
    this.textSize = Sizes.dimen_15,
    this.height = Sizes.dimen_48,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.border,
    this.fontWeight,
    this.canClick = true,
    this.isLoading = false,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        border: border,
      ),
      child: CupertinoButton(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        onPressed: canClick && (!isLoading) ? onTap : null,
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        child: isLoading
            ? Lottie.asset(
                AppLottie.progressWhite,
                height: Sizes.dimen_24,
                width: Sizes.dimen_24,
              )
            : Text(
                text,
                style: AppTextStyle.style500font14.copyWith(
                  color: fontColor,
                  fontSize: textSize,
                  fontWeight: fontWeight ?? FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
