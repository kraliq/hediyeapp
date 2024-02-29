import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  const Userprofilelist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle55,
            height: 36.adaptSize,
            width: 36.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.only(bottom: 15.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "avmehves_d",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 3.v),
                Text(
                  "seni takip etmeye başladı.",
                  style: CustomTextStyles.labelMediumSFProWhiteA700Medium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "1 hafta önce",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            height: 33.v,
            width: 80.h,
            text: "Geri Takip Et",
            margin: EdgeInsets.only(bottom: 18.v),
            buttonStyle: CustomButtonStyles.outlinePrimary,
            buttonTextStyle: CustomTextStyles.labelMediumSFPro,
          ),
        ],
      ),
    );
  }
}
