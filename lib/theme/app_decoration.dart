import 'package:flutter/material.dart';
import 'package:giftapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90002,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.64),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientPinkToPurple => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.5),
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.pink800,
            appTheme.purple600,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray80002,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.blueGray80002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray50001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray50001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray80001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray80001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray80002 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray80002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray90001 => BoxDecoration(
        color: appTheme.blueGray90001,
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineBluegray900011 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray90001,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.gray900,
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.1),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700.withOpacity(0.5),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
