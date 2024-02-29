import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/CustomBottomNavigationBar/customBottomNavigationBar.dart';
import 'package:giftapp/presentation/notifications_page/notifications_page.dart';

// ignore_for_file: must_be_immutable
class NotificationsTabContainerPage extends StatefulWidget {
  const NotificationsTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsTabContainerPageState createState() =>
      NotificationsTabContainerPageState();
}

class NotificationsTabContainerPageState
    extends State<NotificationsTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 76.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 656.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            NotificationsPage(),
                            NotificationsPage(),
                            NotificationsPage(),
                            NotificationsPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
   
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 41.v,
      width: 366.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Tümü",
            ),
          ),
          Tab(
            child: Text(
              "Beğeniler (5)",
            ),
          ),
          Tab(
            child: Text(
              "Destekler (3)",
            ),
          ),
          Tab(
            child: Text(
              "Takipler",
            ),
          ),
        ],
      ),
    );
  }
}
