import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mosques_guide_app/view/home/controller.dart';
import 'package:mosques_guide_app/view/home/widgets/drawer_widget.dart';

import 'widgets/menuScreen.dart';
import 'widgets/mainScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(115, 162, 106, 1),
            Color.fromRGBO(79, 140, 105, 1),
            Color.fromRGBO(61, 128, 106, 1)
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ZoomDrawer(
            isRtl: true,
            controller: drawerController,
            menuScreen: const MenuScreen(),
            mainScreen: MainScreen(drawerController),
            borderRadius: 24.0,
            showShadow: true,
            angle: 0.0,
            drawerShadowsBackgroundColor: Colors.green,
            slideWidth: MediaQuery.of(context).size.width * 0.60,
          )),
    );
  }
}
