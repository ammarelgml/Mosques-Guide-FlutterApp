import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/view/home/index.dart';
import '../../controller/drawer_controller.dart';
import '../../theme/styles.dart';
import 'widgets/menu.dart';

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);
  static const String id = 'main';
  final appDrawerController = Get.find<AppDrawerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: mainDecoration,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ZoomDrawer(
            // isRtl: true,
            controller: appDrawerController.drawerController,
            menuScreen: const Menu(),
            mainScreen: const Home(),
            borderRadius: 24.0,
            showShadow: true,
            angle: 0.0,
            androidCloseOnBackTap: true,
            mainScreenTapClose: true,
            drawerShadowsBackgroundColor: Colors.green,
            slideWidth: MediaQuery.of(context).size.width * 0.6,
          )),
    );
  }
}
