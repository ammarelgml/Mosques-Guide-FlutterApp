import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [avatar("url", "زائر")],
          )),
         const DrawerWidget(),
          const SizedBox(height: 25),
          InkWell(
            child:const  Text(
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
    return Row(
      children: [
        Center(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(url),
          ),
        ),
        Column(
          children: [
           const Text(
              "مرحبا بك",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white),
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
