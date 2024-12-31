import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_demo/style/app_color.dart';

import 'element/text_theme.dart';

// ignore: non_constant_identifier_names
ThemeData LightThemeData() {
  return ThemeData(
    colorScheme: lightTheme,
    textTheme: CustomTextTheme.textThemeLight,
    fontFamily: 'product_sans',
    brightness: Brightness.light,
    //Setting the Brightness to light  so that this can be used as Light ThemeData
    scaffoldBackgroundColor: AppColor.secondaryExtraSoft,
    // textTheme: CustomTextTheme.textThemeLight, //Setting the Text Theme to LightTextTheme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.light,
      systemOverlayStyle: const SystemUiOverlayStyle(

          // Status bar color

          statusBarColor: AppColor.accent,

          // Status bar brightness (optional)

          statusBarIconBrightness: Brightness.dark),
      elevation: 0,
    ),
  );
}
