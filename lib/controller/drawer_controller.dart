import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';

class AppDrawerController extends GetxController {
  final drawerController = ZoomDrawerController();

  void openDrawer() {
    drawerController.toggle!();
  }

  void closeDrawer() {
    drawerController.close;
  }
}
