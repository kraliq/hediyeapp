import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/explore_page/explore_page.dart';
import 'package:giftapp/presentation/home_page/home_page.dart';
import 'package:giftapp/presentation/leader_board_page/leader_board_page.dart';
import 'package:giftapp/presentation/notifications_tab_container_page/notifications_tab_container_page.dart';
import 'package:giftapp/presentation/profile_two_page/profile_two_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  // Kullanılacak sayfaların listesi
  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    NotificationsTabContainerPage(),
    LeaderBoardPage(),
    ProfileTwoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (BuildContext context) => _pages[index]),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: appTheme.gray900.withOpacity(0.64),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Ara',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Bildirimler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard),
          label: 'Lider Tablosu',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.blueGrey,
      showSelectedLabels: false,  // Seçili ögeler için etiketleri gösterme
      showUnselectedLabels: false,  // Seçilmemiş ögeler için etiketleri gösterme
    );
  }
}
