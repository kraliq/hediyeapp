import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  const Userprofilelist3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle116590x90,
            height: 90.adaptSize,
            width: 90.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "@mekselinalacin",
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          SizedBox(height: 3.v),
          Opacity(
            opacity: 0.7,
            child: Text(
              "12k kişi",
              style: CustomTextStyles.bodySmallSFProDisplayWhiteA700Regular,
            ),
          ),
        ],
      ),
    );
  }
}
