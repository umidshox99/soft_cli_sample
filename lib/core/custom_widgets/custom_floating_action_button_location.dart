import 'package:flutter/material.dart';

class CustomFloatingActionButtonLocation extends _DockedFloatingActionButtonLocation {
  const CustomFloatingActionButtonLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = scaffoldGeometry.scaffoldSize.width - scaffoldGeometry.floatingActionButtonSize.width;
    return Offset(fabX, getDockedY(scaffoldGeometry));
  }
}

abstract class _DockedFloatingActionButtonLocation extends FloatingActionButtonLocation {
  const _DockedFloatingActionButtonLocation();

  @protected
  double getDockedY(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double maxFabY = scaffoldGeometry.scaffoldSize.height - fabHeight;
    return maxFabY / 2 + maxFabY / 4;
  }
}
