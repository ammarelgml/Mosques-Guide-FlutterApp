import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

class MainScreen extends StatelessWidget {
  final ZoomDrawerController;
  MainScreen(this.ZoomDrawerController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("demo"),
          leading: InkWell(
            onTap: () => ZoomDrawerController.toggle(),
            child: Icon(Icons.menu),
          )),
      backgroundColor: Colors.white,
      body: Center(child: Text("data")),
    );
  }
}
