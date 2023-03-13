import 'package:flutter/material.dart';
class AppUtils {
  AppUtils._();

  /// box
  static const SizedBox kBox = SizedBox.shrink();
  static const SizedBox kBoxWith2 = SizedBox(width: 2);
  static const SizedBox kBoxWith4 = SizedBox(width: 4);
  static const SizedBox kBoxWith6 = SizedBox(width: 6);
  static const SizedBox kBoxWith8 = SizedBox(width: 8);
  static const SizedBox kBoxWith12 = SizedBox(width: 12);
  static const SizedBox kBoxWith16 = SizedBox(width: 16);
  static const SizedBox kBoxWith24 = SizedBox(width: 24);
  static SizedBox kBoxHeight2 = const SizedBox(height: 2);
  static SizedBox kBoxHeight4 = const SizedBox(height: 4);
  static SizedBox kBoxHeight6 = const SizedBox(height: 6);
  static SizedBox kBoxHeight8 = const SizedBox(height: 8);
  static SizedBox kBoxHeight12 = const SizedBox(height: 12);
  static SizedBox kBoxHeight16 = const SizedBox(height: 16);
  static SizedBox kBoxHeight20 = const SizedBox(height: 20);
  static SizedBox kBoxHeight24 = const SizedBox(height: 24);

  /// divider
  static Divider kDivider = const Divider(height: 1, thickness: 1);
  static Divider kDividerHeight24 = const Divider(height: 24, thickness: 1);

  static Padding kPad16Divider = const Padding(
    padding: EdgeInsets.only(left: 16),
    child: Divider(height: 1, thickness: 1),
  );
  static Padding kPadHor16Divider = const Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Divider(height: 1, thickness: 1),
  );

  /// spacer
  static const kSpacer = Spacer();

  /// padding
  static EdgeInsets kPaddingAll4 = const EdgeInsets.all(4);
  static EdgeInsets kPaddingAll6 = const EdgeInsets.all(6);
  static EdgeInsets kPaddingAll8 = const EdgeInsets.all(8);
  static EdgeInsets kPaddingAll12 = const EdgeInsets.all(12);
  static EdgeInsets kPaddingAll16 = const EdgeInsets.all(16);
  static EdgeInsets kPaddingAll24 = const EdgeInsets.all(24);
  static EdgeInsets kPaddingHorizontal8 = const EdgeInsets.symmetric(horizontal: 8);
  static EdgeInsets kPaddingHorizontal16 = const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsets kPaddingHor32Ver20 =
      const EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static EdgeInsets kPaddingHor16Bottom30 =
      const EdgeInsets.only(bottom: 30, left: 16, right: 16);
  static EdgeInsets kPaddingHor16Ver12 =
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static EdgeInsets kPaddingHor12Ver16 =
      const EdgeInsets.symmetric(horizontal: 12, vertical: 16);
  static EdgeInsets kPaddingHor16Ver8 = const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static EdgeInsets kPaddingHor8Ver4 = const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static EdgeInsets kPaddingVer8 = const EdgeInsets.symmetric(vertical: 8);

  /// border radius
  static Radius kRadius = Radius.zero;
  static Radius kRadius8 = const Radius.circular(8);
  static Radius kRadius12 = const Radius.circular(12);
  static BorderRadius kBorderRadius0 = const BorderRadius.all(Radius.circular(0));
  static BorderRadius kBorderRadius2 = const BorderRadius.all(Radius.circular(2));
  static BorderRadius kBorderRadius4 = const BorderRadius.all(Radius.circular(4));
  static BorderRadius kBorderRadius6 = const BorderRadius.all(Radius.circular(6));
  static BorderRadius kBorderRadius8 = const BorderRadius.all(Radius.circular(8));
  static BorderRadius kBorderRadius12 = const BorderRadius.all(Radius.circular(12));
  static BorderRadius kBorderRadius16 = const BorderRadius.all(Radius.circular(16));
  static BorderRadius kBorderRadius20 = const BorderRadius.all(Radius.circular(20));

  static BorderRadius kBorderRadius48 = const BorderRadius.all(Radius.circular(48));
  static BorderRadius kBorderRadius64 = const BorderRadius.all(Radius.circular(64));


  static Size? _currentSize;

  static setCurrentSize(Size u) {
    _currentSize = u;
  }

  static Size get currentSize => _currentSize ?? const Size(375, 812);
}
