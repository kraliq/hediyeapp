import '../share_list_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_search_view.dart';

class ShareListScreen extends StatelessWidget {
  ShareListScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 16.v),
              CustomSearchView(
                controller: searchController,
                hintText: "Ara",
              ),
              SizedBox(height: 16.v),
              SizedBox(
                height: 716.v,
                width: 358.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 69.v),
                        child: SizedBox(
                          width: 104.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: _buildUserProfile(context),
                      ),
                    ),
                  ],
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
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Paylaşılacak Kişileri Seç",
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 4.v,
        );
      },
      itemCount: 9,
      itemBuilder: (context, index) {
        return Userprofile1ItemWidget();
      },
    );
  }
}
