import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Links",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.linksScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Share Post One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sharePostOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Share Post Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sharePostTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Share Post",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sharePostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Share Post Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sharePostThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Share List",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shareListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SinglePost",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.singlepostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Orher Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orherProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
