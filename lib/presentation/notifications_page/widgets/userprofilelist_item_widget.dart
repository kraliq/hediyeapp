import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';
import 'package:giftapp/widgets/custom_outlined_button.dart';
import 'package:giftapp/presentation/UserProfile.dart';

class UserprofilelistItemWidget extends StatelessWidget {
  final UserProfile userProfile;

  const UserprofilelistItemWidget({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfileImage(),
          _buildUserInfo(),
          Spacer(),
          _buildFollowButton(),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return CustomImageView(
      imagePath: userProfile.imagePath,
      height: 36.adaptSize,
      width: 36.adaptSize,
      radius: BorderRadius.circular(12.h),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userProfile.username, style: theme.textTheme.labelLarge),
          SizedBox(height: 3.v),
          Text(userProfile.action, style: CustomTextStyles.labelMediumSFProWhiteA700Medium),
          SizedBox(height: 3.v),
          Text(userProfile.timeAgo, style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _buildFollowButton() {
    return CustomOutlinedButton(
      text: "Geri Takip Et",
      onPressed: () {
        // Geri takip etme işlemi
      },
    );
  }
}
