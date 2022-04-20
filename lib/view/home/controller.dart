import 'package:get/get.dart';
import 'package:mosques_guide_app/services/network/api/prayet_times_api.dart';

class PrayerTimesController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    super.onInit();
    PrayerAPI.fetchPrayerTimes().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

}
