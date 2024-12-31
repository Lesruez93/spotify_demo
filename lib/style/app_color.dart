import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Colors.blue;
  static Color primaryExtraSoft = const Color(0xFFEFF3FC);
  static Color light = const Color(0xFFFFFFFF);
  static Color dark = Colors.black;

  // static Color secondary = Color(0xFF1B1F24);
  static const Color secondarySoft = Color(0xFF9D9D9D);
  static const Color fontColor = Color(0xFF342626);
  static Color secondaryExtraSoft = const Color(0xF0F0F0F0);
  static const Color error = Color(0xFFD00E0E);
  static const Color errorSoft = Color(0xFFFFADAD);
  static const Color success = Color(0xFF16AE26);
  static const Color successTint = Color(0x9116AE26);
  static const Color warning = Color(0xFFEB8600);
  static const Color warningTint = Color(0xAEEB8600);
  static const Color primaryHard = Color(0xFF266EF1);
  static const Color primarySoft = Color(0xFFC1E3FB);
  static const Color secondary = Color(0xFF0A0E2F);
  static const Color accent = Color(0xFFF1F1F1);
  static const Color border = Color(0xFFD3D3E4);
}

ColorScheme lightTheme = ColorScheme.light(
  primary: AppColor.primary,
  onPrimary: AppColor.primarySoft,
  tertiary: AppColor.fontColor,
  inversePrimary: Color(0xFFC1E3FB),
  primaryContainer: const Color(0xFFD0CCCC),
  onPrimaryContainer: const Color(0xFF333333),
  secondary: AppColor.secondaryExtraSoft,
  onSecondary: const Color(0xFFFFFFFF),
  secondaryContainer: AppColor.dark,
  onSecondaryContainer: const Color(0xFF333333),
  error: Colors.redAccent,
  background: AppColor.light,
  onError: Colors.red,
  errorContainer: Colors.redAccent,
  onErrorContainer: const Color(0xFFF9DEDC),
  outline: const Color(0xFF6F6D73),
  onBackground: AppColor.secondarySoft,
  inverseSurface: AppColor.primarySoft,
  surface: AppColor.accent,
  onSurface: const Color(0xFF333333),
  surfaceVariant: AppColor.fontColor,
  onSurfaceVariant: const Color(0xFF757575),
);

ColorScheme  darkTheme = ColorScheme.dark(
  primary: AppColor.primary,
  onPrimary: Color(0xFF333333),
  inversePrimary: Color(0xFFC1E3FB),
  primaryContainer: Color(0xFFD0C000),
  onPrimaryContainer: Color(0xFF333333),
  secondary: Color(0xFF9D9D9D),
  onSecondary: Color(0xFFE9E9E9),
  onSecondaryContainer: Color(0xFF333333),
  secondaryContainer: AppColor.light,
  error: Colors.redAccent,
  onError: Colors.red,
  inverseSurface: Color.fromARGB(255, 20, 20, 20),
  tertiary: AppColor.light,
  errorContainer: Colors.redAccent,
  onErrorContainer: Color(0xFFF9DEDC),
  outline: Color(0xFF938F99),
  onBackground: Color(0xFFF3F3F3),
  surface: AppColor.accent,
  onSurface: Color(0xFFF3F3F3),
  surfaceVariant: Color(0xFF49454F),
  onSurfaceVariant: Color(0xFFCAC4D0),
  background: const Color.fromARGB(255, 20, 20, 20),
);
