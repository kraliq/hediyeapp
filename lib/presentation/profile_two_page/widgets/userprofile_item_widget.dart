import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle57,
              height: 36.adaptSize,
              width: 36.adaptSize,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maria21",
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Ilene_Labadie5",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomOutlinedButton(
              height: 27.v,
              width: 59.h,
              text: "2640 ₺",
              margin: EdgeInsets.symmetric(vertical: 4.v),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientOrangeToDeepOrangeADecoration,
            ),
          ],
        ),
      ),
    );
  }
}
