import 'package:giftapp/presentation/UserProfile.dart';

import '../notifications_page/widgets/userprofilelist1_item_widget.dart';
import '../notifications_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserProfile>>(
        future: getUserProfilesFromFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Bir hata oluştu: ${snapshot.error}');
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Text('Hiç bildirim yok.');
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return UserprofilelistItemWidget(userProfile: snapshot.data![index]);
            },
          );
        },
      ),
    );
  }

  Future<List<UserProfile>> getUserProfilesFromFirebase() async {
    // Firebase'den verilerinizi çekmek için kodunuz
    // Bu örnekte basitçe bir liste döndürüyorum.
    // Gerçekte Firebase'den gelen verilere göre bu kısmı düzenlemeniz gerekecek.
    var sampleData = [
      UserProfile(username: 'user1', action: 'seni takip etti', timeAgo: '1 saat önce', imagePath: 'path/to/image'),
      // Diğer örnek veriler
    ];
    return sampleData;
  }
}
