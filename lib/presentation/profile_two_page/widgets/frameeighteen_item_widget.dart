import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FrameeighteenItemWidget extends StatelessWidget {
  const FrameeighteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.outlineBlueGrayTL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgSolarCameraAddOutline,
          ),
        ),
      ),
    );
  }
}
