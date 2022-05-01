import 'package:get/get.dart';
import '../controller.dart';

class PrayerTimesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrayerTimesController(), fenix: true);
  }
}
