import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/custom_widgets/custom_circular_progress_indicator.dart';
import 'package:soft_cli_sample/core/functions/app_functions.dart';
import 'package:soft_cli_sample/core/theme/app_lottie.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ModalProgressHUD extends StatelessWidget {
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Offset? offset;
  final bool dismissible;
  final bool showNotFound;
  final bool showEmpty;
  final String notFoundTitle;
  final Widget child;

  const ModalProgressHUD({
    Key? key,
    required this.inAsyncCall,
    this.opacity = Sizes.dimen_0,
    this.color = AppColor.transparent,
    this.offset,
    this.dismissible = false,
    required this.child,
    this.showNotFound = false,
    this.showEmpty = false,
    this.notFoundTitle = Constants.empty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!inAsyncCall) {
      return showNotFound
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppSvg.empty),
                SizedBox(
                  height: Sizes.dimen_24,
                  width: AppFunctions.width(context),
                ),
                Text(
                  notFoundTitle,
                  style: AppTextStyle.style500font14.copyWith(
                    fontSize: Sizes.dimen_16,
                    color: AppColor.textBtColor,
                    height: Sizes.fontHeight5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : child;
    }
    Widget layOutProgressIndicator;
    if (offset == null) {
      layOutProgressIndicator = Center(
        child: Lottie.asset(
          AppLottie.progressRed,
          height: Sizes.dimen_48,
          width: Sizes.dimen_48,
        ),
      );
    } else {
      layOutProgressIndicator = Positioned(
        left: offset!.dx,
        top: offset!.dy,
        child: const CustomCircularProgressIndicator(isPage: true),
      );
    }
    return Stack(
      children: [
        showEmpty ? const SizedBox() : child,
        Opacity(
          opacity: opacity,
          child: ModalBarrier(
            dismissible: dismissible,
            color: color,
          ),
        ),
        layOutProgressIndicator,
      ],
    );
  }
}
