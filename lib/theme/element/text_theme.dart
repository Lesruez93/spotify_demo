import 'package:flutter/material.dart';

// Custom Text Styles Class For Both Dark and Light Theme
class CustomTextTheme {
  //! Default Font is GoogleFonts.Ubuntu You can change it as your Need

  static const _textColorLight =
      Color(0xFF000000); // Light Theme Default Text Color
  static const _textColorDark =
      Color(0xFFFFFFFF); // Light Theme Default Text Color

  static TextTheme get textThemeLight {
    return _textTheme(textColor: _textColorLight);
  }

  static TextTheme get textThemeDark {
    return _textTheme(textColor: _textColorDark);
  }

  // Private Method For Text Theme so that we can change the vale for Both Dark And Light Theme
  static TextTheme _textTheme({required Color textColor}) {
    const FontWeight _light = FontWeight.w300;
    const FontWeight _medium = FontWeight.w500;
    const FontWeight _regular = FontWeight.w400;

    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 96,
        color: textColor,
        fontWeight: _light,
        letterSpacing: -1.5,
      ),
      displayMedium: TextStyle(
        color: textColor,
        fontSize: 60,
        fontWeight: _light,
        letterSpacing: -0.5,
      ),
      displaySmall: TextStyle(
        color: textColor,
        fontSize: 48,
        fontWeight: _regular,
        letterSpacing: 0.0,
      ),
      headlineMedium: TextStyle(
        color: textColor,
        fontSize: 34,
        fontWeight: _regular,
        letterSpacing: 0.25,
      ),
      headlineSmall: TextStyle(
        color: textColor,
        fontSize: 18,
        fontWeight: _regular,
        letterSpacing: 0.0,
      ),
      titleLarge: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: _medium,
        letterSpacing: 0.15,
      ),
      bodyLarge: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: _regular,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: _regular,
        letterSpacing: 0.25,
      ),
      labelLarge: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: _medium,
        letterSpacing: 1.25,
      ),
      bodySmall: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: _regular,
        letterSpacing: 0.4,
      ),
      labelSmall: TextStyle(
        color: textColor,
        fontSize: 10,
        fontWeight: _regular,
        letterSpacing: 1.5,
      ),
    );
  }
}
