import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/CustomBottomNavigationBar/customBottomNavigationBar.dart';
import 'package:giftapp/widgets/custom_outlined_button.dart';
import 'package:giftapp/widgets/custom_search_view.dart';
import 'package:giftapp/widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 62.v),
              CustomSearchView(
                controller: searchController,
                hintText: "Ara",
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildKii(context),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 358.adaptSize,
                      width: 358.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2,
                            height: 358.adaptSize,
                            width: 358.adaptSize,
                            radius: BorderRadius.circular(16.h),
                            alignment: Alignment.center,
                          ),
                          _buildFrame(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    // Diğer widget'larınız buraya gelecek
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _buildKii(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSectionWidget(context, "210 Kişi", ImageConstant.imgRectangle2175x175, "@mekselina-lacin", "%62 Tamamladı"),
        _buildSectionWidget(context, "58 Kişi", ImageConstant.imgRectangle21, "", ""),
      ],
    );
  }

  Widget _buildSectionWidget(BuildContext context, String buttonText, String imagePath, String userName, String statusLabel) {
    return SizedBox(
      height: 175.adaptSize,
      width: 175.adaptSize,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 175.adaptSize,
            width: 175.adaptSize,
            radius: BorderRadius.circular(16.h),
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
                  _buildButton(context, buttonText),
                  SizedBox(height: 99.v),
                  if (userName.isNotEmpty && statusLabel.isNotEmpty)
                    _buildFrameThree(context, userName: userName, statusLabel: statusLabel),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return CustomOutlinedButton(
      width: 72.h,
      text: text,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPinkToPurpleDecoration,
    );
  }

  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.h, 306.v, 21.h, 16.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle51,
              height: 36.adaptSize,
              width: 36.adaptSize,
              radius: BorderRadius.circular(12.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 2.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("@itirkalinurgan", style: CustomTextStyles.labelMediumSFProSemiBold),
                  Opacity(
                    opacity: 0.5,
                    child: Text("%90 Tamamladı", style: CustomTextStyles.labelMediumSFProWhiteA700SemiBold_1),
                  ),
                ],
              ),
            ),
            Spacer(),
            _buildButton(context, "1124 Kişi"),
          ],
        ),
      ),
    );
  }

  Widget _buildFrameThree(BuildContext context, {required String userName, required String statusLabel}) {
    return SizedBox(
      width: 132.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle536x36,
            height: 36.adaptSize,
            width: 36.adaptSize,
            radius: BorderRadius.circular(12.h),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName, style: CustomTextStyles.labelMediumSFProSemiBold.copyWith(color: appTheme.whiteA700)),
                Opacity(
                  opacity: 0.5,
                  child: Text(statusLabel, style: CustomTextStyles.labelMediumSFProWhiteA700SemiBold_1.copyWith(color: appTheme.whiteA700.withOpacity(0.53))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
