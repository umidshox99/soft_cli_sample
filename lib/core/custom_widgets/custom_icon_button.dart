import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? fontColor;
  final String text;
  final Function onTap;
  final double? width;
  final double? iconPadding;
  final Widget icon;
  final double? textSize;
  final double? height;
  final double radius;
  final bool reverse;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final BoxBorder? border;

  const CustomIconButton({
    this.text = Constants.empty,
    required this.icon,
    this.iconPadding = Sizes.dimen_8,
    required this.onTap,
    this.backgroundColor = AppColor.primary,
    this.fontColor = AppColor.assets,
    this.width = double.infinity,
    this.textSize = Sizes.dimen_15,
    this.height = Sizes.dimen_48,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.reverse = false,
    this.border,
    this.radius = Sizes.dimen_8,
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
      child: MaterialButton(
        elevation: 0,
        highlightElevation: 0,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        onPressed: () {
          onTap();
        },
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            reverse ? Text(
              text,
              style: AppTextStyle.style500font14.copyWith(
                color: fontColor,
                fontSize: textSize,
              ),
              textAlign: TextAlign.center,
            ): icon,
            SizedBox(
              width: iconPadding,
            ),
            reverse ? icon: Text(
              text,
              style: AppTextStyle.style500font14.copyWith(
                color: fontColor,
                fontSize: textSize,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
