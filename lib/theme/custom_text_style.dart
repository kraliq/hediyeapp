import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeIndigo5099 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo5099,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPoppinsOnPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallSFProDisplayWhiteA700 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.whiteA700.withOpacity(0.49),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallSFProDisplayWhiteA700Regular =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallSFProTextIndigo5099 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.indigo5099,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallSFProTextIndigo5099Regular =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.indigo5099,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProDisplay =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSFProDisplayMedium =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProDisplayWhiteA700 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProDisplayWhiteA700Medium =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.whiteA700.withOpacity(0.3),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsWhiteA700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.whiteA700.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFPro => theme.textTheme.labelMedium!.sFPro.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProMedium =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProSemiBold =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProTextIndigo5099 =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: appTheme.indigo5099,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProTextIndigo5099Medium =>
      theme.textTheme.labelMedium!.sFProText.copyWith(
        color: appTheme.indigo5099,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProWhiteA700 =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProWhiteA700Medium =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProWhiteA700Medium_1 =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProWhiteA700SemiBold =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.56),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProWhiteA700SemiBold_1 =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProWhiteA700SemiBold_2 =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProWhiteA700SemiBold_3 =>
      theme.textTheme.labelMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleMediumSFProWhiteA700 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallSFPro => theme.textTheme.titleSmall!.sFPro.copyWith(
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
