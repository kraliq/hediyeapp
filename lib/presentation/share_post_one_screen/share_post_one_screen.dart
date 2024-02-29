import '../share_post_one_screen/widgets/sharepostone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_drop_down.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class SharePostOneScreen extends StatelessWidget {
  SharePostOneScreen({Key? key})
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

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildSharePostOneFrame(context),
              SizedBox(height: 21.v),
              _buildFrame(context),
              SizedBox(height: 24.v),
              _buildFrame1(context),
              SizedBox(height: 25.v),
              _buildFrame2(context),
              SizedBox(height: 23.v),
              _buildFrame3(context),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                height: 49.v,
                text: "Paylaş",
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.labelLargeMedium,
              ),
              SizedBox(height: 26.v),
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
        onTap: () {
        Navigator.pop(context);
      },
      ),
      
      centerTitle: true,
      title: AppbarTitle(
        text: "Gönderi Oluştur",
      ),
    );
  }

  /// Section Widget
  Widget _buildSharePostOneFrame(BuildContext context) {
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
                return SharepostoneItemWidget();
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
            textInputAction: TextInputAction.done,
            maxLines: 7,
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
                color: Colors.black,
              ),
            ),
            hintText: "Herkes",
            hintStyle: TextStyle(color: Colors.grey),
            items: dropdownItemList,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
