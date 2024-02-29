import '../share_post_two_screen/widgets/shareposttwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_drop_down.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class SharePostTwoScreen extends StatelessWidget {
  SharePostTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController girinizController = TextEditingController();

  TextEditingController girinizController1 = TextEditingController();

  TextEditingController girinizController2 = TextEditingController();

  List<String> dropdownItemList = [
    "Herkese",
    "Takipçilere",
  ];

  TextEditingController fluentlocationaddregularController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSharePostTwoFrame(context),
              SizedBox(height: 13.v),
              _buildFrame(context),
              SizedBox(height: 16.v),
              _buildFrame1(context),
              SizedBox(height: 17.v),
              _buildFrame2(context),
              SizedBox(height: 15.v),
              _buildFrame3(context),
              SizedBox(height: 16.v),
              _buildFrame4(context),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                height: 49.v,
                text: "Paylaş",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.labelLargeMedium,
              ),
              SizedBox(height: 26.v),
              SizedBox(
                width: 104.h,
                child: Divider(),
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
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolarArrowLeftOutline,
        margin: EdgeInsets.only(left: 24.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Gönderi Oluştur",
      ),
    );
  }

  /// Section Widget
  Widget _buildSharePostTwoFrame(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fotoğraflar",
            style: CustomTextStyles.titleSmallSFPro,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 122.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return ShareposttwoItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.9,
            child: Text(
              "Ürün Adı",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 9.v),
          CustomTextFormField(
            controller: girinizController,
            hintText: "Giriniz..",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.9,
            child: Text(
              "Fiyat",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: girinizController1,
            hintText: "Giriniz...",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.9,
            child: Text(
              "Açıklama",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
            controller: girinizController2,
            hintText: "Giriniz...",
            maxLines: 4,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.9,
            child: Text(
              "Gizlilik",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 7.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "Herkes",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.9,
            child: Text(
              "Lokasyon",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 6.v),
          CustomTextFormField(
            controller: fluentlocationaddregularController,
            hintText: "Konum Ekle",
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgFluentlocationadd16regular,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 44.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }
}
