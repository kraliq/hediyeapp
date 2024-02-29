import '../share_post_screen/widgets/framesixtytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_search_view.dart';

class SharePostScreen extends StatelessWidget {
  SharePostScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 28.v),
              CustomSearchView(
                controller: searchController,
                hintText: "Konum Ara",
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Yakınındaki Konumlar",
                  style: CustomTextStyles.titleSmallSFPro,
                ),
              ),
              SizedBox(height: 13.v),
              _buildFrameSixtyTwo(context),
              SizedBox(height: 52.v),
              CustomElevatedButton(
                height: 49.v,
                text: "Konumu Ekle",
                margin: EdgeInsets.symmetric(horizontal: 8.h),
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
        text: "Konum Ekle",
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixtyTwo(BuildContext context) {
    return ListView.separated(
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
      itemCount: 8,
      itemBuilder: (context, index) {
        return FramesixtytwoItemWidget();
      },
    );
  }
}
