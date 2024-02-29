import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:giftapp/core/app_export.dart';

import 'package:giftapp/presentation/home_page/widgets/framesixslider_item_widget.dart';
import 'package:giftapp/theme/app_decoration.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostWidget extends StatefulWidget {
  final MediaQueryData mediaQueryData;
  final ThemeData theme;

  PostWidget({
    Key? key,
    required this.mediaQueryData,
    required this.theme,
  }) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  int sliderIndex = 0;



  @override
  Widget build(BuildContext context) {  
    int sliderIndex = 0;
    
    return Scaffold(
      body: Scaffold(
        body: SizedBox(
          
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                SizedBox(height: 56.v),
                SizedBox(height: 16.v),
                Column(
                  children: [
                    Container(
                      
                      padding: EdgeInsets.symmetric(vertical: 13.v),
                      decoration: AppDecoration.outlineBlueGray,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildFrameFourRow(context),
                          SizedBox(height: 16.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: SizedBox(
                              height: 20.v,
                              width: 342.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.59,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    theme.colorScheme.primary.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          _buildFrameTwelveRow(context),
                          SizedBox(height: 15.v),
                          _buildFrameSixSlider(context),
                          SizedBox(height: 8.v),
                          SizedBox(
                            height: 8.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: sliderIndex,
                              count: 2,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: appTheme.whiteA700,
                                dotColor: appTheme.whiteA700.withOpacity(0.46),
                                activeDotScale: 1.3333333333333333,
                                dotHeight: 6.v,
                                dotWidth: 6.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.v),
                          _buildFrameTenRow(context),
                          SizedBox(height: 13.v),
                          Container(
                            width: 338.h,
                            margin: EdgeInsets.only(
                              left: 24.h,
                              right: 28.h,
                            ),
                            child: Text(
                              "Selamlar değerli takipçilerimmm 👋👋 Doğum günüm için iPhone 15 pro almayı çok isterim. Doğum günüme kadar desteklerinizi bekleeriim.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallWhiteA700Regular
                                  .copyWith(
                                height: 1.42,
                              ),
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
      ),
    );
  }



  /// Section Widget
  Widget _buildFrameFourRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mekselina Laçin",
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "@mekselina-lacin",
                  style: CustomTextStyles.labelMediumSFProWhiteA700,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgTablerDots,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelveRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.6,
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "iPhone 15 Pro Max 512 GB - 114.900₺",
                style: CustomTextStyles.labelMediumSFProWhiteA700SemiBold,
              ),
            ),
          ),
          Opacity(
            opacity: 0.9,
            child: Text(
              "%62 Tamamladı",
              style: CustomTextStyles.labelMediumSFProWhiteA700SemiBold_2,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            setState(() {
              sliderIndex = index;
            });
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return FramesixsliderItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 81.h,
            text: "1879",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSolarheartbold,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            onPressed: () {
              
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildFrameTenColumn(context),
          ),
          Spacer(),
          _buildFrameNineRow(
            context,
            kiICounter: "210 Kişi",
          ),
        ],
      ),
    );
  }

  /// Section Widget

  /// Common widget
  Widget _buildFrameTenColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlineBluegray80001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Opacity(
        opacity: 0.8,
        child: Container(
          height: 20.adaptSize,
          width: 20.adaptSize,
          padding: EdgeInsets.all(1.h),
          decoration: AppDecoration.fillGray900,
          child: CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 17.adaptSize,
            width: 17.adaptSize,
            alignment: Alignment.topLeft,
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameNineRow(
    BuildContext context, {
    required String kiICounter,
  }) {
    return Container(
      width: 96.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.gradientPinkToPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSolarWalletMoneyOutline,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Container(
            width: 40.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              kiICounter,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
