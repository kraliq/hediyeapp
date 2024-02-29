import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/CustomBottomNavigationBar/customBottomNavigationBar.dart';
import 'package:giftapp/presentation/leader_board_page/widgets/userprofilelist2_item_widget.dart';
import 'package:giftapp/presentation/leader_board_page/widgets/userprofilelist3_item_widget.dart';
import 'package:giftapp/presentation/leader_board_page/widgets/userprofilestack_item_widget.dart';
import 'package:giftapp/widgets/custom_outlined_button.dart';

class LeaderBoardPage extends StatelessWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGray,
        child: Column(
          children: [
            SizedBox(height: 68.v),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h, right: 17.h), // Sağa da padding eklendi.
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle("En çok destekte bulunan kullanıcılar (Son 30 gün)"),
                      SizedBox(height: 6.v),
                      _buildHorizontalList(() => Userprofilelist2ItemWidget(), 4),
                      SizedBox(height: 23.v),
                      _buildSectionTitle("En çok destek alan gönderiler"),
                      SizedBox(height: 7.v),
                      _buildHorizontalList(() => UserprofilestackItemWidget(), 3),
                      SizedBox(height: 22.v),
                      _buildSectionTitle("En çok destek alan kullanıcılar (Son 30 gün)"),
                      SizedBox(height: 6.v),
                      _buildHorizontalList(() => Userprofilelist3ItemWidget(), 4),
                      SizedBox(height: 21.v),
                      _buildSectionTitle("Trend gönderiler"),
                      SizedBox(height: 8.v),
                      _buildHorizontalScroll(),
                      SizedBox(height: 15.v),
                      _buildSectionTitle("Trend desteklenen gönderiler"),
                      SizedBox(height: 8.v),
                      _buildHorizontalScroll2(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Opacity(
      opacity: 0.6,
      child: Text(
        title.toUpperCase(),
        style: CustomTextStyles.labelMediumPoppinsWhiteA700,
      ),
    );
  }

  Widget _buildHorizontalList(Widget Function() itemCreator, int itemCount) {
    return SizedBox(
      height: itemCreator() is UserprofilestackItemWidget ? 171.v : 128.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 12.h),
        itemCount: itemCount,
        itemBuilder: (context, index) => itemCreator(),
      ),
    );
  }

  Widget _buildHorizontalScroll() {
    // Basit bir yatay kaydırma listesi için örnek bir widget.
    return Container(
      height: 200.v, // Yüksekliği projenize göre ayarlayın.
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Öğe sayısı.
        itemBuilder: (context, index) {
          return Container(
            width: 150.h,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: BoxDecoration(
              color: Colors.blue, // Renk ve şekil örneği.
              borderRadius: BorderRadius.circular(12.h),
            ),
            child: Center(
              child: Text(
                'Öğe $index',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHorizontalScroll2() {
    // Başka bir yatay kaydırma listesi örneği.
    return Container(
      height: 200.v, // Yüksekliği projenize göre ayarlayın.
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Öğe sayısı.
        itemBuilder: (context, index) {
          return Container(
            width: 150.h,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: BoxDecoration(
              color: Colors.green, // Renk ve şekil örneği.
              borderRadius: BorderRadius.circular(12.h),
            ),
            child: Center(
              child: Text(
                'Öğe $index',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
