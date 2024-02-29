import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray900,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueGray900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.5),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 3,
        space: 3,
        color: appTheme.blueGray90003,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.5),
          fontSize: 10.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w300,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 36.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 13.fSize,
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 11.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.67),
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF03069),

    // On colors(text colors)
    onPrimary: Color(0XFF171721),
    onPrimaryContainer: Color(0XFF8C8C8C),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber300 => Color(0XFFFFCA52);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue500 => Color(0XFF1D9BF0);
  Color get blue700 => Color(0XFF1D87CE);
  Color get blue800 => Color(0XFF135BB9);
  Color get blueA400 => Color(0XFF1877F2);

  // BlueGray
  Color get blueGray100 => Color(0XFFD2D2D4);
  Color get blueGray500 => Color(0XFF686C85);
  Color get blueGray50001 => Color(0XFF6D6D9C);
  Color get blueGray700A5 => Color(0XA5545458);
  Color get blueGray800 => Color(0XFF35354E);
  Color get blueGray80001 => Color(0XFF3D3D57);
  Color get blueGray80002 => Color(0XFF3C3E4B);
  Color get blueGray80003 => Color(0XFF42425F);
  Color get blueGray900 => Color(0XFF2C2C41);
  Color get blueGray90001 => Color(0XFF2A2A3B);
  Color get blueGray90002 => Color(0XFF2A2A3A);
  Color get blueGray90003 => Color(0XFF35353F);

  // Cyan
  Color get cyanA400 => Color(0XFF00F2EA);

  // DeepOrange
  Color get deepOrangeA400 => Color(0XFFFD4B00);

  // Gray
  Color get gray400 => Color(0XFFBBBBBB);
  Color get gray800 => Color(0XFF3C3C43);
  Color get gray900 => Color(0XFF1E1E2A);

  // Indigo
  Color get indigo400 => Color(0XFF4963CA);
  Color get indigo5099 => Color(0X99EBEBF5);

  // IndigoA
  Color get indigoA200A2 => Color(0XA2446BF2);

  // Orange
  Color get orange500 => Color(0XFFFF9900);

  // Pink
  Color get pink400 => Color(0XFFE0447E);
  Color get pink800 => Color(0XFFB3244F);

  // Purple
  Color get purple600 => Color(0XFF9119A4);

  // Red
  Color get red400 => Color(0XFFF7504F);
  Color get red500 => Color(0XFFEA4335);
  Color get red900 => Color(0XFF9E0505);
  Color get redA700 => Color(0XFFFF0000);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
