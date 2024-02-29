import 'package:flutter/material.dart';

import 'package:giftapp/presentation/login_screen.dart';
import 'package:giftapp/presentation/register_screen.dart';

import 'package:giftapp/presentation/links_screen/links_screen.dart';
import 'package:giftapp/presentation/share_post_one_screen/share_post_one_screen.dart';
import 'package:giftapp/presentation/messages_screen/messages_screen.dart';

import 'package:giftapp/presentation/share_post_two_screen/share_post_two_screen.dart';
import 'package:giftapp/presentation/share_post_screen/share_post_screen.dart';
import 'package:giftapp/presentation/share_post_three_screen/share_post_three_screen.dart';
import 'package:giftapp/presentation/share_list_screen/share_list_screen.dart';
import 'package:giftapp/presentation/singlepost_screen/singlepost_screen.dart';
import 'package:giftapp/presentation/message_screen/message_screen.dart';
import 'package:giftapp/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/welcome_page_screen/welcome_page_screen.dart';

class AppRoutes {
  static const String welcomePageScreen = '/welcome_page_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String explorePage = '/explore_page';

  static const String notificationsPage = '/notifications_page';

  static const String notificationsTabContainerPage =
      '/notifications_tab_container_page';

  static const String leaderBoardPage = '/leader_board_page';

  static const String profileOnePage = '/profile_one_page';

  static const String profileOneTabContainerScreen =
      '/profile_one_tab_container_screen';

  static const String profileTwoPage = '/profile_two_page';

  static const String linksScreen = '/links_screen';

  static const String sharePostOneScreen = '/share_post_one_screen';

  static const String messagesScreen = '/messages_screen';

  static const String profileScreen = '/profile_screen';

  static const String sharePostTwoScreen = '/share_post_two_screen';

  static const String sharePostScreen = '/share_post_screen';

  static const String homeOnePage = '/home_one_page';

  static const String sharePostThreeScreen = '/share_post_three_screen';

  static const String shareListScreen = '/share_list_screen';

  static const String singlepostScreen = '/singlepost_screen';

  static const String orherProfileScreen = '/orher_profile_screen';

  static const String messageScreen = '/message_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomePageScreen: (context) => WelcomePageScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    
    linksScreen: (context) => LinksScreen(),
    sharePostOneScreen: (context) => SharePostOneScreen(),
    messagesScreen: (context) => MessagesScreen(),
    
    sharePostTwoScreen: (context) => SharePostTwoScreen(),
    sharePostScreen: (context) => SharePostScreen(),
    sharePostThreeScreen: (context) => SharePostThreeScreen(),
    shareListScreen: (context) => ShareListScreen(),
    singlepostScreen: (context) => SinglePostScreen(postId: 0,),
    messageScreen: (context) => MessageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
