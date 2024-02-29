import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilestackItemWidget extends StatelessWidget {
  const UserprofilestackItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171.adaptSize,
      width: 171.adaptSize,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2171x171,
            height: 171.adaptSize,
            width: 171.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.gradientPinkToPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "210 Kişi",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 99.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle536x36,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "@mekselina-lacin",
                              style: CustomTextStyles.labelMediumSFProSemiBold,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "%98 Tamamladı",
                                style: CustomTextStyles
                                    .labelMediumSFProWhiteA700SemiBold_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
