import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/login_screen.dart';
import 'package:giftapp/presentation/register_screen.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';

// Diğer importlarınız burada yer almalı

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgimage.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7), // Karanlık opaklık katmanı
            ),
            child: Column(
              children: [
                Spacer(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          radius: BorderRadius.circular(24.h),
                        ),
                        SizedBox(height: 22.v),
                        Text(
                          "Gift App",
                          style: theme.textTheme.displaySmall,
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          height: 49.v,
                          text: "Giriş Yap",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.labelLargeMedium,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                        ),
                        SizedBox(height: 12.v),
                        CustomElevatedButton(
                          height: 49.v,
                          text: "Kayıt Ol",
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle: CustomTextStyles.labelLargeMedium,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 43.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
