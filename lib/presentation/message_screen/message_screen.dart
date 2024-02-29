import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController writemessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.v),
              _buildThirtySeven(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTail,
                      height: 20.v,
                      width: 1.h,
                      margin: EdgeInsets.only(top: 14.v),
                    ),
                    CustomElevatedButton(
                      height: 34.v,
                      width: 168.h,
                      text: "Görüşmek üzerine.",
                      buttonStyle: CustomButtonStyles.fillBlueGrayTL17,
                      buttonTextStyle: theme.textTheme.bodyLarge!,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 91.h,
                    right: 4.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 55.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Bugün",
                                style: CustomTextStyles
                                    .labelMediumSFProTextIndigo5099Medium,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "9",
                                style: CustomTextStyles
                                    .bodySmallSFProTextIndigo5099,
                              ),
                              TextSpan(
                                text: ":41",
                                style: CustomTextStyles
                                    .bodySmallSFProTextIndigo5099,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: SizedBox(
                          width: 238.h,
                          child: Text(
                            "Üzgünüm mesajını görmemişim yarın bululaşım mı? 🤗",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              height: 1.29,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    SizedBox(
                      height: 34.v,
                      width: 180.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 5.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  Text(
                                    "Uygunluğun var mı?",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserPrimary,
                            height: 20.v,
                            width: 16.h,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Okundu",
                                style: CustomTextStyles
                                    .labelMediumSFProTextIndigo5099Medium,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "10:02",
                                style: CustomTextStyles
                                    .bodySmallSFProTextIndigo5099,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTail,
                      height: 20.v,
                      width: 1.h,
                      margin: EdgeInsets.only(top: 36.v),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillBluegray90001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          SizedBox(
                            width: 216.h,
                            child: Text(
                              "Evet var, yarın saat 12:20 ‘de \ncadde de buluşalım mı?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.29,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              CustomTextFormField(
                controller: writemessageController,
                hintText: "Mesaj yaz",
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      14.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 36.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 13.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 104.h,
                  child: Divider(),
                ),
              ),
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
          top: 16.v,
          bottom: 24.v,
          
        ),
        onTap: () {
        Navigator.pop(context);
      },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Büşra Pekin",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSolarTrashBinTrashOutline,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 24.v),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 87.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 47.h),
                    child: Text(
                      "2 Ağustos Salı",
                      style: CustomTextStyles.labelMediumSFProTextIndigo5099,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTail,
                      height: 20.v,
                      width: 1.h,
                      margin: EdgeInsets.only(top: 14.v),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        height: 34.v,
                        text: "Seninle bir gün bunu konuşalım.",
                        buttonStyle: CustomButtonStyles.fillBlueGrayTL17,
                        buttonTextStyle: theme.textTheme.bodyLarge!,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dün",
                    style:
                        CustomTextStyles.labelMediumSFProTextIndigo5099Medium,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "9",
                    style: CustomTextStyles.bodySmallSFProTextIndigo5099,
                  ),
                  TextSpan(
                    text: ":41",
                    style: CustomTextStyles.bodySmallSFProTextIndigo5099,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
