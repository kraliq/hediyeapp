import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:giftapp/widgets/app_bar/appbar_title.dart';
import 'package:giftapp/widgets/app_bar/custom_app_bar.dart';
import 'package:giftapp/widgets/custom_elevated_button.dart';
import 'package:giftapp/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRegisterButton(context),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
          children: [
            SizedBox(height: 20.v),
            CustomImageView(
              imagePath: ImageConstant.imgGroup3,
              height: 86.v,
              width: 64.h,
              alignment: Alignment.centerLeft,
            ),
            _buildFormSection("Adınız Soyadınız", nameController, ImageConstant.imgSolaruseroutline),
            _buildFormSection("Kullanıcı Adınız", usernameController, ImageConstant.imgSolaruseridoutline),
            _buildFormSection("Telefon Numaranız", phoneController, ImageConstant.imgSolarphoneroundedoutline, hintText: "+90"),
            _buildFormSection("Posta Adresiniz", emailController, ImageConstant.imgSolarletterlinear),
            _buildFormSection("Şifreniz", passwordController, ImageConstant.imgSolarlockoutline, isPassword: true),
            SizedBox(height: 20.v),
            CustomElevatedButton(
              height: 49.v,
              text: "Kayıt Ol",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.labelLargeMedium,
            ),
            SizedBox(height: 20.v),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildRegisterButton(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSolarArrowLeftOutline,
        margin: EdgeInsets.only(left: 14.h),
        onTap: () {
        Navigator.pop(context);
      },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Kayıt Ol",
      ),
    );
  }

  Widget _buildFormSection(String title, TextEditingController controller, String imagePath, {String hintText = "", bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.9,
          child: Text(title, style: theme.textTheme.titleMedium),
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller,
          hintText: hintText.isEmpty ? "johndoe@mail.com" : hintText,
          textInputType: isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
              imagePath: imagePath,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          obscureText: isPassword,
        ),
        SizedBox(height: 16.v),
      ],
    );
  }
}
