import 'package:giftapp/presentation/CustomBottomNavigationBar/customBottomNavigationBar.dart';
import 'package:giftapp/presentation/Post_Widget/post_widget.dart';

import '../home_page/widgets/framesixslider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int sliderIndex = 0; // Veya ihtiyacınıza göre bir değer

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: PostWidget(
        mediaQueryData: mediaQueryData,
        theme: theme,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(), // Burada ekleyin
    );
  }
}
