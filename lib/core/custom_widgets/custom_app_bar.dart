import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/custom_widgets/app_widgets.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soft_cli_sample/data/extensions/widget_padding_extension.dart';

PreferredSize customAppBar({
  String? title,
  Widget? titleWidget,
  PreferredSizeWidget? bottom,
  Widget? leading,
  double? leadingWidth,
  Color? color,
  bool? centerTitle,
  required BuildContext context,
  Function? titleTap,
  List<Widget>? actions,
  double toolbarHeight = kToolbarHeight,
  SystemUiOverlayStyle? systemOverlayStyle,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: SizedBox(
      height: toolbarHeight == 0 ? 0 : null,
      // decoration: const BoxDecoration(
      //   boxShadow: AppShadow.shadow1,
      // ),
      child: AppBar(
        toolbarHeight: toolbarHeight,
        leadingWidth: leadingWidth,
        elevation: Sizes.dimen_0,
        // systemOverlayStyle: systemOverlayStyle ??
        //     const SystemUiOverlayStyle(
        //         statusBarColor: AppColor.background,
        //         statusBarIconBrightness: Brightness.light),
        title: InkWell(
          onTap: () {
            titleTap?.call();
          },
          splashColor: AppColor.transparent,
          highlightColor: AppColor.transparent,
          child: titleWidget ??
              Text(
                title ?? Constants.empty,
                style: AppTextStyle.appBarTitle,
              ),
        ),
        backgroundColor: color ?? AppColor.background,
        leading: leading ??
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primaryLight.withOpacity(0.71),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                width: Sizes.dimen_32,
                height: Sizes.dimen_32,
                child: AppWidgets.imageSvg(
                  path: AppSvg.icBack,
                ),
              ).paddingOnly(
                left: Sizes.dimen_16,
              ),
            ),
        bottom: bottom,
        centerTitle: centerTitle,
        actions: actions,
      ),
    ),
  );
}
