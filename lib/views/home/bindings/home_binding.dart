import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../providers/home_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<HomeService>(
          () => HomeService(),
    );
  }
}
