import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/drawer_controller.dart';
import '../../../theme/styles.dart';

class Header extends GetView<AppDrawerController> {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defSpacing * .75),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_outlined, color: Colors.white, size: 24)),
              Image.asset('assets/images/title_icon.png'),
              const SizedBox(width: defSpacing * 2.5),
            ],
          ),
          const Text('Next prayer time', style: kSmallTextStyle),
          // Todo: use real next time prayer
          const Text('05:15 AM', style: kTitleStyle),
          const Text('Al-fajr prayer', style: kSmallTextStyle),
        ],
      ),
    );
  }
}
