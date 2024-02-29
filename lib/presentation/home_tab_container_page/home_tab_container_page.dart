import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/home_page/home_page.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeTabContainerPageState createState() => HomeTabContainerPageState();
}

class HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 641.v,
              child: TabBarView(
                controller: tabviewController,
                children: [
                  HomePage(),
                  HomePage(),
                  HomePage(),
                  HomePage(),
                  HomePage(),
                  HomePage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 72.v,
      title: Container(
        height: 56.v,
        width: 366.h,
        margin: EdgeInsets.only(left: 24.h),
        child: TabBar(
          controller: tabviewController,
          isScrollable: true,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.h,
            ),
            border: Border.all(
              color: appTheme.blueGray80002,
              width: 1.h,
            ),
          ),
          tabs: [
            Tab(
              child: CustomIconButton(
                height: 56.adaptSize,
                width: 56.adaptSize,
                decoration: IconButtonStyleHelper.outlineBlueGrayTL20,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSolarCameraAddOutline,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle556x56,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle6,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle7,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle8,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
            Tab(
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle9,
                height: 56.adaptSize,
                width: 56.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
