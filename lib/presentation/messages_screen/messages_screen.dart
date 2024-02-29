import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildUserProfile(
                context,
                userImage: ImageConstant.imgRectangle5,
                userName: "Mekselina Laçin",
                greetingMessage:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                daysAgo: "2 gün önce",
              ),
              _buildRecentOrders(context),
              _buildPlaylist(
                context,
                image: ImageConstant.imgRectangle517,
                username: "Hülya Karagüllü",
                message:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                time: "2 gün önce",
                label: "2",
              ),
              _buildUserProfile(
                context,
                userImage: ImageConstant.imgRectangle518,
                userName: "Selvi Aydın",
                greetingMessage:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                daysAgo: "2 gün önce",
              ),
              _buildPlaylist(
                context,
                image: ImageConstant.imgRectangle519,
                username: "Nedim Demir",
                message:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                time: "2 gün önce",
                label: "7",
              ),
              _buildPlaylist(
                context,
                image: ImageConstant.imgRectangle520,
                username: "Hasan Erbil",
                message:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                time: "2 gün önce",
                label: "1",
              ),
              _buildClientTestimonials(context),
              _buildUserProfile(
                context,
                userImage: ImageConstant.imgRectangle522,
                userName: "Süreyya Dinmez",
                greetingMessage:
                    "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                daysAgo: "2 gün önce",
              ),
              SizedBox(height: 95.v),
              
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgSolarArrowLeftOutline,
      margin: EdgeInsets.only(
        left: 24.h,
        top: 8.v,
        bottom: 8.v,
      ),
      onTap: () {
        Navigator.pop(context);
      },
    ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Mesajlar",
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle516,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDoctorReviews(
                    context,
                    dynamicText1: "Ahmet Yılmaz",
                    dynamicText2:
                        "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
                    dynamicText3: "2 gün önce",
                  ),
                  Container(
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Text(
                      "1",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle521,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: _buildDoctorReviews(
              context,
              dynamicText1: "Büşra Pekin",
              dynamicText2:
                  "Selamlar, bu gün yeni gönderini gördüm ve çok beğendim.",
              dynamicText3: "2 gün önce",
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dynamicText1,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              dynamicText2,
              style: CustomTextStyles.labelMediumSFProWhiteA700.copyWith(
                color: appTheme.whiteA700.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 2.v),
            Text(
              dynamicText3,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.whiteA700.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String userImage,
    required String userName,
    required String greetingMessage,
    required String daysAgo,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 1.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: appTheme.whiteA700,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          greetingMessage,
                          style: CustomTextStyles.labelMediumSFProWhiteA700
                              .copyWith(
                            color: appTheme.whiteA700.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          daysAgo,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.whiteA700.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 10.v,
                      bottom: 11.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlaylist(
    BuildContext context, {
    required String image,
    required String username,
    required String message,
    required String time,
    required String label,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: image,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                message,
                style: CustomTextStyles.labelMediumSFProWhiteA700.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                time,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.whiteA700.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Container(
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              label,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
