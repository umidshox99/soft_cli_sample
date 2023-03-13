import 'package:flutter/material.dart';

class AppBarDivider extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const Divider();
  }

  @override
  double get maxExtent => 1;

  @override
  double get minExtent => 1;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
