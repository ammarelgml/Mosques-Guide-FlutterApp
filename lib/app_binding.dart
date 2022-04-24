import 'package:get/get.dart';

import 'controller/drawer_controller.dart';

// Services started before the app runs, such as Restful api.

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppDrawerController());
  }
}
