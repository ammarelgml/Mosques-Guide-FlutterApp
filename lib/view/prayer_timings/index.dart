import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/styles.dart';
import '../home/controller.dart';
import 'widgets/header.dart';
import 'widgets/prayers_list.dart';

class PrayerTimings extends GetView<PrayerTimesController> {
  static const String id = 'prayer_timings';

  const PrayerTimings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: mainDecoration,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top - defSpacing /2),
            const Header(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(defSpacing * 0.75),
                children: [
                  const Text('Prayer Timings', style: kSecTitleStyle),
                  controller.obx((data) => PrayersList(data: data)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
