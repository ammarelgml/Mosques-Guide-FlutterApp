import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/view/prayer_timings/index.dart';
import '../../../controller/drawer_controller.dart';
import '../../../theme/styles.dart';
import 'custom_search_field.dart';

final fakeMosquesList = [
  'Al-Salam Mosque',
  'Omar Bn El-Khatab Mosque',
  'Abo Bakr Mosque',
];

class Header extends GetView<AppDrawerController> {
  Header({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

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
              GetBuilder<AppDrawerController>(
                builder: (newController) => IconButton(
                    onPressed: () {
                      newController.openDrawer();
                    },
                    icon: const Icon(Icons.menu, color: Colors.white, size: 24)),
              ),
              Image.asset('assets/images/title_icon.png'),
              const SizedBox(width: defSpacing * 2.8),
            ],
          ),
          MaterialButton(
            onPressed: (){
              Get.toNamed(PrayerTimings.id);
            },
            child: Column(
              children: const [
                Text('Next prayer time', style: kSmallTextStyle),
                // Todo: use real next time prayer
                Text('05:15 AM', style: kTitleStyle),
                Text('Al-fajr prayer', style: kSmallTextStyle),
              ],
            ),
          ),
          const SizedBox(height: defSpacing / 2),
          CustomSearchField(controller: searchController, list: fakeMosquesList),
        ],
      ),
    );
  }
}
