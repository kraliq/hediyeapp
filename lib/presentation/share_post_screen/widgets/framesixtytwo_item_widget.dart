import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

// ignore: must_be_immutable
class FramesixtytwoItemWidget extends StatelessWidget {
  const FramesixtytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBluegray90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Kedi Cafe",
            style: CustomTextStyles.labelLargeSFProDisplayMedium,
          ),
          SizedBox(height: 3.v),
          Opacity(
            opacity: 0.4,
            child: Text(
              "0,3 km • Osmanağa Mah., Kadıköy",
              style: CustomTextStyles.bodySmallSFProDisplayWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
