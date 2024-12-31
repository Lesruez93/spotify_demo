// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:spotify_demo/routes/app_pages.dart';
import 'package:spotify_demo/theme/controller/initial_binding.dart';
import 'package:spotify_demo/theme/controller/theme_controller.dart';
import 'package:spotify_demo/theme/theme.dart';
import 'package:spotify_demo/utils/spotify_api_service.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.lazyPut<ApiService>(() => ApiService());
  SpotifyApi spotifyApi = SpotifyApi();

  String? accessToken = await spotifyApi.getAccessToken();
  if (accessToken != null) {
    final getStorage = GetStorage();

    getStorage.write('token', accessToken);

    //Todo fetch new token if the token has  expired only
  } else {
    print('Failed to fetch access token');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.put(ThemeController());

    return GetMaterialApp(
      title: "Spotify Demo",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: InitialBinding(),
      themeMode: _themeController.themeStateFromStorage,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,

      // CustomThemeData for Dark Theme
    );
  }
}
