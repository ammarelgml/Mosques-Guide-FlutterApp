import 'package:get/get.dart';
import 'package:mosques_guide_app/view/home/controller.dart';

class PrayerTimesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrayerTimesController(), fenix: true);
  }
}
