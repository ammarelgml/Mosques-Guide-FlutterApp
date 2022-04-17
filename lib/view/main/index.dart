import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/view/home/index.dart';
import '../../controller/drawer_controller.dart';
import 'widgets/menuScreen.dart';

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);
  static const String id = 'main';
  final appDrawerController = Get.find<AppDrawerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
        Color.fromRGBO(115, 162, 106, 1),
        Color.fromRGBO(79, 140, 105, 1),
        Color.fromRGBO(61, 128, 106, 1)
      ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ZoomDrawer(
            // isRtl: true,
            controller: appDrawerController.drawerController,
            menuScreen: const MenuScreen(),
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
