import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/theme/styles.dart';
import '../../model/mosque.dart';
import '../../theme/app_theme.dart';
import 'widgets/header.dart';
import 'widgets/mosuqe_data_sheet.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: primaryColor,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).viewPadding.top - defSpacing /2),
              Header(),
              // Todo
              // Implement Google Maps
              Expanded(
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                    child: Center(
                        child: GestureDetector(
                            onTap: () {
                              Get.bottomSheet(
                                MosqueDataSheet(mosque: Mosque()),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                              );
                            },
                            child: const Text('Google Map')))),
              ),
            ],
          ),
        ));
  }
}
