import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  late bool isDarkTheme;
  late bool themeStorageSetting;

  // GetStorage instance for storing the theme setting
  final GetStorage settingsStorage = GetStorage();

  //! Getting Theme State From GetStorage and Set it to the ThemeMode this will be used in main.dart file
  ThemeMode get themeStateFromStorage => _getThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    isDarkTheme = _getThemeFromStorage();

    //! Getting the Theme State from the GetStorage and save it to the variable
    super.onInit();
  }

  // private Method to Get GetStorage theme Setting value and Return it
  bool _getThemeFromStorage() {

    themeStorageSetting = settingsStorage.read('isDarkMode') ?? Get.isDarkMode;
    isDarkTheme = themeStorageSetting;
    return themeStorageSetting;
  }

  // private Method to update GetStorage theme Setting value
  void _updateStorageThemeSetting(bool boolData) {
    settingsStorage.write('isDarkMode', boolData);
  }

  // Method to change the Theme State when the user calls it via the Theme Change Button
  void changeTheme({
    required RxBool isDarkMode,
    required Rx<String> modeName,
  }) {
    if (Get.isDarkMode) {
      modeName.value = 'light';
      isDarkMode.value = false;
      isDarkTheme = false;

      _updateStorageThemeSetting(false);
      _changeThemeMode(ThemeMode.light);

    } else {

      modeName.value = 'dark';
      isDarkMode.value = true;
      isDarkTheme = true;
      _updateStorageThemeSetting(true);
      _changeThemeMode(ThemeMode.dark);
    }
  }

  @override
  void onReady() {

    super.onReady();
  }

  // Private Method to change theme
  void _changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}