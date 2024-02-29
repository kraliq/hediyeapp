import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/presentation/home_page/home_page.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
        child: Column(
          children: [
            SizedBox(height: 30.v),
            _buildProfileImage(),
            Text("Gift App", style: theme.textTheme.displaySmall),
            SizedBox(height: 12.v),
            _buildTextFormField("Posta Adresiniz", emailController, ImageConstant.imgSolarletterlinear, TextInputType.emailAddress),
            _buildTextFormField("Şifreniz", passwordController, ImageConstant.imgSolarlockoutline, TextInputType.visiblePassword, isPassword: true),
            SizedBox(height: 20.v),
            _buildLoginButton(context),
            SizedBox(height: 20.v),
            _buildSocialLoginButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage1,
          height: 100.adaptSize,
          width: 100.adaptSize,
          radius: BorderRadius.circular(24.h),
        ),
        SizedBox(height: 22.v),
      ],
    );
  }

  Widget _buildTextFormField(String label, TextEditingController controller, String imagePath, TextInputType inputType, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.9,
          child: Text(label, style: theme.textTheme.titleMedium),
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller,
          hintText: isPassword ? "********" : "johndoe@mail.com",
          textInputType: inputType,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 10.v, 7.h, 10.v),
            child: CustomImageView(
              imagePath: imagePath,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          obscureText: isPassword,
        ),
        SizedBox(height: 25.v),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      height: 49.v,
      text: "Giriş Yap",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeMedium,
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
    );
  }

  Widget _buildSocialLoginButtons() {
    return Column(
      children: [
        Text("Şifreni mi unuttun?", style: CustomTextStyles.labelLargeMedium),
        SizedBox(height: 40.v),
        _buildSocialLoginButton("Sign in with Apple", ImageConstant.imgIconApple),
        SizedBox(height: 15.v),
        _buildSocialLoginButton("Continue with Facebook", ImageConstant.imgIconFacebook),
        SizedBox(height: 15.v),
        _buildSocialLoginButton("Sign up with Google", ImageConstant.imgGoogle),
        SizedBox(height: 35.v),
      ],
    );
  }

  Widget _buildSocialLoginButton(String text, String imagePath) {
    return CustomElevatedButton(
      height: 48.v,
      text: text,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 15.h),
        child: CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
      buttonTextStyle: CustomTextStyles.labelLargeSFProDisplayMedium,
            onPressed: () {
        // Sosyal medya girişi için ilgili işlevsellik eklenecek

      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolarArrowLeftOutline,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "Giriş Yap"),
    );
  }
}

