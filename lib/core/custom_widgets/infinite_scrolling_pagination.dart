import 'package:soft_cli_sample/core/theme/theme.dart';
import 'package:flutter/material.dart';

class InfiniteScrollingPagination extends StatelessWidget {
  final Function onPagination;
  final Widget child;
  final bool isCallLoading;
  final double marginBottom;

  const InfiniteScrollingPagination({
    Key? key,
    required this.onPagination,
    required this.child,
    this.isCallLoading = false,
    this.marginBottom = Sizes.dimen_32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!isCallLoading && scrollInfo.metrics.axis == Axis.vertical &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
            scrollInfo is ScrollUpdateNotification) {
          onPagination();
          return false;
        }
        return false;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: child),
          Visibility(
            visible: isCallLoading,
            child: Container(
              margin: EdgeInsets.only(bottom: marginBottom, top: Sizes.dimen_16),
              color: AppColor.background,
              height: isCallLoading ? Sizes.dimen_64 : Sizes.dimen_0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    height: Sizes.dimen_36,
                    width: Sizes.dimen_36,
                    child: CircularProgressIndicator(
                      strokeWidth: Sizes.dimen_2,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColor.assets),
                    ),
                  ),
                  Container(
                    width: Sizes.dimen_24,
                    height: Sizes.dimen_24,
                    decoration: const BoxDecoration(
                      color: AppColor.assets,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
