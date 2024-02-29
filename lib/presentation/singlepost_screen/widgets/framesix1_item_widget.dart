import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class Framesix1ItemWidget extends StatelessWidget {
  const Framesix1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle2,
        height: 256.adaptSize,
        width: 256.adaptSize,
        radius: BorderRadius.circular(
          16.h,
        ),
        margin: EdgeInsets.only(right: 110.h),
      ),
    );
  }
}
