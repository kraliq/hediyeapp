import 'package:flutter_svg/svg.dart';
import 'package:giftapp/presentation/CustomBottomNavigationBar/customBottomNavigationBar.dart';
import 'package:giftapp/presentation/message_screen/message_screen.dart';
import 'package:giftapp/presentation/messages_screen/messages_screen.dart';
import 'package:giftapp/presentation/share_post_one_screen/share_post_one_screen.dart';
import 'package:giftapp/presentation/share_post_screen/share_post_screen.dart';
import 'package:giftapp/presentation/share_post_two_screen/share_post_two_screen.dart';

import '../profile_two_page/widgets/frameeighteen_item_widget.dart';
import '../profile_two_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoPage extends StatelessWidget {
  const ProfileTwoPage({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 76.v,
                    width: 160.h,
                    margin: EdgeInsets.only(left: 107.h),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 12.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 14.v),
                                  child: Column(
                                    children: [
                                      Text(
                                        "25,7K",
                                        style: CustomTextStyles
                                            .titleMediumSFProWhiteA700,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Takipçi",
                                          style: CustomTextStyles
                                              .labelMediumSFProWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle564x64,
                                  height: 64.adaptSize,
                                  width: 64.adaptSize,
                                  radius: BorderRadius.circular(
                                    24.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 14.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "874",
                                          style: CustomTextStyles
                                              .titleMediumSFProWhiteA700,
                                        ),
                                      ),
                                      SizedBox(height: 1.v),
                                      Text(
                                        "Takip",
                                        style: CustomTextStyles
                                            .labelMediumSFProWhiteA700,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(right: 61.h),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSolarAddSquareBold,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              radius: BorderRadius.circular(
                                6.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Text(
                  "Mekselina Laçin",
                  style: CustomTextStyles.titleMediumSFProWhiteA700,
                ),
                SizedBox(height: 6.v),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    width: 310.h,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      right: 39.h,
                    ),
                    child: Text(
                      "Doğum günüm için iPhone 15 pro almayı çok isterim. Doğum günüme kadar desteklerinizi bekleeriim.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildFrameThirtyFour(context),
                SizedBox(height: 24.v),
                _buildFrameEighteen(context),
                SizedBox(height: 24.v),
                _buildTabbar(context),
                SizedBox(height: 8.v),
                SizedBox(
                  height: 532.v,
                  width: 342.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildUserProfile(context),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 170.v),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    height: 40.v,
    leadingWidth: 48.h,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgSolarSettingsOutline,
      margin: EdgeInsets.only(
        left: 24.h,
        top: 8.v,
        bottom: 8.v,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessageScreen()), 
        ); 
      },
    ),
    centerTitle: true,
    title: AppbarTitle(
      text: "@mekseline_lacin",
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MessagesScreen()), // Yeni sayfaya git
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
          child: SvgPicture.asset(
            ImageConstant.imgSolarChatRoundLineDuotone,
            width: 24.adaptSize, // İhtiyacınıza göre boyutlandırın
            height: 24.adaptSize,
          ),
        ),
      ),
    ],
  );
}

 


  /// Section Widget
  Widget _buildHediyeTalebiOlustur(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      width: 165.h,
      text: "Hediye Talebi Oluştur",
      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
      buttonTextStyle: CustomTextStyles.labelMediumSFProMedium,
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SharePostOneScreen()),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildProfiliDuzenle(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      width: 165.h,
      text: "Profili Düzenle",
      margin: EdgeInsets.only(left: 12.h),
      buttonStyle: CustomButtonStyles.fillBlueGrayTL20,
      buttonTextStyle: CustomTextStyles.labelMediumSFProMedium,
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildHediyeTalebiOlustur(context),
          _buildProfiliDuzenle(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 56.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: 7,
          itemBuilder: (context, index) {
            return FrameeighteenItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabbar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(48.h, 15.v, 48.h, 16.v),
      decoration: AppDecoration.outlineWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSolarWidgetOutline,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSolarWalletMoneyBold,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSolarLinkMini,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 9,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }
}
