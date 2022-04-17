import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              const SizedBox(width: defSpacing * 2.5),
            ],
          ),
          const Text('Next prayer time', style: kSmallTextStyle),
          const Text('05:15 AM', style: kTitleStyle),
          const Text('Al-fajr prayer', style: kSmallTextStyle),
          const SizedBox(height: defSpacing /2),
          CustomSearchField(controller: searchController, list: fakeMosquesList),
        ],
      ),
    );
  }
}
