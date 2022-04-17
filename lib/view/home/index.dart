import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        body: SafeArea(
      child: Container(
        color: primaryColor,
        child: Column(
          children: [
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
      ),
    ));
  }
}
