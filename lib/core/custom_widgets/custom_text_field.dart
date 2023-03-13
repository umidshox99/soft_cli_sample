import 'package:soft_cli_sample/core/constants/constants.dart';
import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController textEditingController;
  final ValueChanged<String>? change;
  final Function? onSubmit;
  final GestureTapCallback? changePasswordVisibility;
  final FocusNode? currentFocus;
  final FocusNode? nextFocus;
  final String label;
  final String? prefixText, title;
  final String? errorText;
  final bool? error;
  final bool autoFocus;
  final double width;
  final Border? border;
  final Widget? suffix;
  final int? maxLines, minLines, maxLength;
  final double paddingLeft;
  final Color? background;
  final double scrollPadding;
  final bool showPassword, isPassword;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  const CustomTextFiled({
    required this.textEditingController,
    this.change,
    this.prefixText,
    this.currentFocus,
    this.nextFocus,
    this.showPassword = false,
    this.isPassword = false,
    this.background = AppColor.transparent,
    required this.label,
    this.errorText,
    this.error,
    required this.width,
    required this.textInputType,
    required this.textInputAction,
    this.scrollPadding = Sizes.dimen_0,
    this.paddingLeft = Sizes.dimen_8,
    this.inputFormatter,
    this.autoFocus = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.onSubmit,
    this.maxLength,
    this.border,
    this.changePasswordVisibility,
    this.title,
    this.suffix,
  }) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
            style: AppTextStyle.style400font12.copyWith(
              fontSize: Sizes.dimen_14,
              color: AppColor.black50,
              height: Sizes.fontHeight4,
            ),
          ),
        Container(
          height: minLines != 1 ? null : Sizes.dimen_48,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_8),
            color: background,
            border: border ?? Border.all(color: AppColor.grey),
          ),
          margin: EdgeInsets.only(top: title != null ? Sizes.dimen_8 : Sizes.dimen_0),
          padding: EdgeInsets.only(left: paddingLeft),
          child: Center(
            child: TextFormField(
              scrollPhysics: const BouncingScrollPhysics(),
              scrollPadding: EdgeInsets.only(bottom: scrollPadding),
              controller: textEditingController,
              onChanged: change,
              keyboardAppearance: Brightness.dark,
              autofocus: autoFocus,
              inputFormatters: inputFormatter,
              focusNode: currentFocus,
              textInputAction: textInputAction,
              keyboardType: textInputType,
              style: AppTextStyle.style500font14.copyWith(
                color: AppColor.black12,
                fontSize: Sizes.dimen_16,
                height: Sizes.fontHeight5,
              ),
              maxLines: maxLines,
              minLines: minLines,
              maxLength: maxLength,
              expands: false,
              textCapitalization: TextCapitalization.sentences,
              onFieldSubmitted: (value) {
                fieldFocusChange(context, currentFocus, nextFocus);
                if (onSubmit != null) {
                  onSubmit!();
                }
              },
              cursorColor: AppColor.black12,
              obscureText: TextInputType.visiblePassword == textInputType,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: Constants.empty,
                suffixIcon: isPassword
                    ? GestureDetector(
                        onTap: changePasswordVisibility,
                        child: Icon(
                          showPassword ? Icons.visibility : Icons.visibility_off,
                          color: AppColor.hintColor,
                        ),
                      )
                    : null,
                hintText: paddingLeft == Sizes.dimen_0
                    ? null
                    : prefixText != null
                        ? null
                        : label,
                hintStyle: AppTextStyle.style500font14.copyWith(
                  fontSize: Sizes.dimen_16,
                  color: AppColor.hintColor,
                  height: Sizes.fontHeight5,
                ),
                prefixIcon: prefixText != null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Text(
                          prefixText!,
                          style: AppTextStyle.style400font12.copyWith(
                            color: AppColor.assets,
                            fontSize: Sizes.dimen_15,
                          ),
                        ),
                      )
                    : null,
                suffix: suffix,
                fillColor: background,
                filled: background != null,
                labelText: paddingLeft == Sizes.dimen_0 ? label : null,
                labelStyle: AppTextStyle.style400font12.copyWith(
                  fontSize: Sizes.dimen_12,
                  color: AppColor.primary,
                ),
                alignLabelWithHint: true,
              ),
            ),
          ),
        ),
        if (error == true && errorText?.isNotEmpty == true)
          Padding(
            padding: const EdgeInsets.only(top: Sizes.dimen_8),
            child: Text(
              errorText!,
              style: AppTextStyle.style500font14.copyWith(
                color: AppColor.red,
                fontSize: Sizes.dimen_12,
              ),
            ),
          ),
      ],
    );
  }

  fieldFocusChange(
    BuildContext context,
    FocusNode? currentFocus,
    FocusNode? nextFocus,
  ) {
    if (currentFocus != null && nextFocus != null) {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }
}
