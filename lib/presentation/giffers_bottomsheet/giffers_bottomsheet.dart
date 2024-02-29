import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GiffersBottomsheet extends StatelessWidget {
  const GiffersBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context); // 'mediaQueryData' tanımı eksikti, ekledim.

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.v, // '143.h' değerini, genel bir uygulama yapısına daha uygun olacak şekilde '16.w' olarak değiştirdim.
        vertical: 16.v, // '8.v' değerini, içeriği daha iyi sarmalayacak şekilde '16.v' olarak değiştirdim.
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900, // 'AppDecoration.fillGray' yerine doğrudan bir renk kullanarak daha anlaşılır bir yapı sağladım.
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24), // 'BorderRadiusStyle.customBorderTL24' yerine 'BorderRadius.only' kullanımı ile köşe yuvarlaklıklarını sağladım.
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start, // 'MainAxisAlignment.center' yerine 'MainAxisAlignment.start' kullanarak, ögeleri sütunun başlangıcına hizaladım.
        children: [
          SizedBox(height: 8), // Spacer'ı kaldırarak, ögeler arasında boşluk bırakmak için SizedBox ekledim.
          Container(
            height: 4, // '3.v' yerine '4' sabit bir değer kullanarak, çekme göstergesinin yüksekliğini belirttim.
            width: 100, // '46.h' yerine '100' sabit bir değer kullanarak, çekme göstergesinin genişliğini arttırdım.
            decoration: BoxDecoration(
              color: appTheme.whiteA700.withOpacity(0.3),
              borderRadius: BorderRadius.circular(2), // '1.h' yerine '2' sabit bir değer kullanarak, çekme göstergesinin köşe yuvarlaklığını belirttim.
            ),
          ),
          SizedBox(height: 16), // Çekme göstergesi ile diğer içerikler arasında boşluk bırakmak için SizedBox ekledim.
          Divider(color: appTheme.whiteA700.withOpacity(0.3)), // Divider ekleyerek, alt çizgiyi belirginleştirdim.
          // İçeriklerinizi buraya ekleyin. Örneğin, butonlar, metinler vs.
        ],
      ),
    );
  }
}
