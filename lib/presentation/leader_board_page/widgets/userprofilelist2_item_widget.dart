import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  const Userprofilelist2ItemWidget({Key? key})
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
            imagePath: ImageConstant.imgRectangle1165,
            height: 90.adaptSize,
            width: 90.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Ahmet Yılmaz",
            style: CustomTextStyles.labelMediumSemiBold,
          ),
          SizedBox(height: 3.v),
          Opacity(
            opacity: 0.7,
            child: Text(
              "12,850 ₺",
              style: CustomTextStyles.bodySmallSFProDisplayWhiteA700Regular,
            ),
          ),
        ],
      ),
    );
  }
}
