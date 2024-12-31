

import 'package:get/get.dart';
import 'package:spotify_demo/theme/controller/theme_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
