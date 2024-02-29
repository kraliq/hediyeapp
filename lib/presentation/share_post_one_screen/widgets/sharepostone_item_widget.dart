import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class SharepostoneItemWidget extends StatelessWidget {
  const SharepostoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle2,
        height: 122.adaptSize,
        width: 122.adaptSize,
        radius: BorderRadius.circular(
          16.h,
        ),
      ),
    );
  }
}
