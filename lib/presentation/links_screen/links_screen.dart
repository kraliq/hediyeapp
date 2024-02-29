import '../links_screen/widgets/links_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/explore_page/explore_page.dart';
import 'package:giftapp/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:giftapp/presentation/leader_board_page/leader_board_page.dart';
import 'package:giftapp/presentation/notifications_tab_container_page/notifications_tab_container_page.dart';
import 'package:giftapp/presentation/profile_two_page/profile_two_page.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_bottom_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class LinksScreen extends StatelessWidget {
  LinksScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController logostiktokiconController = TextEditingController();

  TextEditingController skilliconsinstagramController = TextEditingController();

  TextEditingController logosfacebookController = TextEditingController();

  TextEditingController warningController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Column(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 14.v),
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
                                    padding:
                                        EdgeInsets.symmetric(vertical: 14.v),
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
                  _buildLinks(context),
                  SizedBox(height: 24.v),
                  _buildTabbar(context),
                  _buildLogostiktokicon1(context),
                  SizedBox(height: 12.v),
                  _buildLogosfacebook1(context),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 201.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.fillBlue.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTrash,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 4.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "Twitter",
                              style: CustomTextStyles.labelLargeMedium12,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgSolarmaximizesquare3outline,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 4.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: 104.h,
                child: Divider(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgInbox,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "@mekseline_lacin",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSolarAddCircleLinear,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfiliniDuzenle(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      width: 165.h,
      text: "Profilini Düzenle",
      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
      buttonTextStyle: CustomTextStyles.labelMediumSFProMedium,
    );
  }

  /// Section Widget
  Widget _buildLiderTablosu(BuildContext context) {
    return CustomElevatedButton(
      height: 41.v,
      width: 165.h,
      text: "Lider Tablosu",
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
          _buildProfiliniDuzenle(context),
          _buildLiderTablosu(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLinks(BuildContext context) {
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
            return LinksItemWidget();
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
            imagePath: ImageConstant.imgSolarWalletMoneyOutlineBlueGray500,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSolarLinkMiniWhiteA700,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogostiktokicon(BuildContext context) {
    return CustomTextFormField(
      width: 165.h,
      controller: logostiktokiconController,
      hintText: "Tiktok",
      hintStyle: CustomTextStyles.labelLargeMedium12,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLogostiktokicon,
          height: 24.v,
          width: 21.h,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSolarmaximizesquare3outline,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 16.v),
      borderDecoration: TextFormFieldStyleHelper.fillBlack,
      fillColor: appTheme.black900,
    );
  }

  /// Section Widget
  Widget _buildSkilliconsinstagram(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 165.h,
        controller: skilliconsinstagramController,
        hintText: "İnstagram",
        hintStyle: CustomTextStyles.labelLargeMedium12,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSkilliconsinstagram,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSolarmaximizesquare3outline,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.gradientIndigoToPink,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildLogostiktokicon1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLogostiktokicon(context),
          _buildSkilliconsinstagram(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogosfacebook(BuildContext context) {
    return CustomTextFormField(
      width: 165.h,
      controller: logosfacebookController,
      hintText: "Facebook",
      hintStyle: CustomTextStyles.labelLargeMedium12,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 12.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLogosfacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSolarmaximizesquare3outline,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 16.v),
      borderDecoration: TextFormFieldStyleHelper.fillBlue,
      fillColor: appTheme.blue800,
    );
  }

  /// Section Widget
  Widget _buildWarning(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 165.h,
        controller: warningController,
        hintText: "Youtube",
        hintStyle: CustomTextStyles.labelLargeMedium12,
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 8.h, 15.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgWarning,
            height: 16.v,
            width: 24.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSolarmaximizesquare3outline,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.fillRed,
        fillColor: appTheme.red900,
      ),
    );
  }

  /// Section Widget
  Widget _buildLogosfacebook1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLogosfacebook(context),
          _buildWarning(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Solarhomesmilebold:
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.explorePage;
      case BottomBarEnum.Solarbelloutline:
        return AppRoutes.notificationsTabContainerPage;
      case BottomBarEnum.Solarchartsquareoutline:
        return AppRoutes.leaderBoardPage;
      case BottomBarEnum.Solarusercircleoutline:
        return AppRoutes.profileTwoPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.notificationsTabContainerPage:
        return NotificationsTabContainerPage();
      case AppRoutes.leaderBoardPage:
        return LeaderBoardPage();
      case AppRoutes.profileTwoPage:
        return ProfileTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
