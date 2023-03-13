import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soft_cli_sample/core/theme/app_text_style.dart';

/// Please don't change [fontSize] directly.
/// [fontSize] used project wide.
Widget _baseText({
  required String text,
  int maxLines = 1,
  bool autoResize = false,
  TextAlign textAlign = TextAlign.start,
  double height = 1,
  TextStyle? textStyle = AppTextStyle.style400font13grey3,
}) {
  if (autoResize) {
    return AutoSizeText(
      text,
      style: textStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
  return Text(
    text,
    textAlign: textAlign,
    style: textStyle,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
  );
}

class AppWidgets {
  static Widget text({
    required String text,
    int maxLines = 1,
    bool autoResize = false,
    TextAlign textAlign = TextAlign.start,
    double height = 1,
    TextStyle? textStyle,
  }) {
    return _baseText(
      textAlign: textAlign,
      text: text,
      maxLines: maxLines,
      autoResize: autoResize,
      height: height,
      textStyle: textStyle,
    );
  }

  static Widget textLocale(
      {required String text,
      int maxLines = 1,
      bool autoResize = false,
      TextAlign textAlign = TextAlign.start,
      List<String> args = const [],
      TextStyle? textStyle}) {
    return _baseText(
      textAlign: textAlign,
      text: tr(text, args: args),
      maxLines: maxLines,
      autoResize: autoResize,
      textStyle: textStyle,
    );
  }

  static Widget imageAsset({
    required String path,
    double? height,
    double? width,
    Color? color,
    BoxFit fit = BoxFit.cover,
  }) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }

  static Widget imageSvg({
    required String path,
    double? height,
    double? width,
    BoxFit fit = BoxFit.none,
    Color? color,
  }) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }
}
