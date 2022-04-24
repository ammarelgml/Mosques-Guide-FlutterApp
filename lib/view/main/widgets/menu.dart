import 'package:flutter/material.dart';
import 'package:mosques_guide_app/theme/styles.dart';
import 'drawer_widget.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [avatar('assets/images/user.png', "زائر")],
          )),
          const DrawerWidget(),
          const SizedBox(height: 25),
          InkWell(
            child: const Text(
              "تسجيل الدخول/الخروج",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }

  Widget avatar(String url, String name) {
    return Row(children: [
      Center(
        child: CircleAvatar(radius: 25, backgroundColor: Colors.white, backgroundImage: AssetImage(url)),
      ),
      const SizedBox(width: defSpacing/2),
      Column(children: [
        const Text("مرحبا بك", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white)),
        Text(name, style: const TextStyle(color: Colors.white))
      ])
    ]);
  }
}
