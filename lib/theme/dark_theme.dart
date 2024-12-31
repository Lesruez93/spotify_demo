import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_demo/style/app_color.dart';

import 'element/text_theme.dart';

// ignore: non_constant_identifier_names
ThemeData DarkThemeData() {
  return ThemeData(
    colorScheme: darkTheme,
    fontFamily: 'product_sans',
    textTheme: CustomTextTheme.textThemeDark,
    brightness: Brightness.dark, //Setting the Brightness to Dark  so that this can be used as Dark ThemeData
    scaffoldBackgroundColor: AppColor.dark,


    appBarTheme:  AppBarTheme(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      systemOverlayStyle:  SystemUiOverlayStyle(

        // Status bar color

          statusBarColor: AppColor.dark,

          // Status bar brightness (optional)

          statusBarIconBrightness: Brightness.dark),

      elevation: 0,
    ),

    //! You Can Set All Your Custom Dark Theme Here
  );
}
