import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  final String aboutUsTxt =
      "عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق عن التطبيق";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                "عن التطبيق",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Colors.black),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.toNamed("/settings");
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/aboutus_cover.png',
                  height: 150,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 40.0, left: 40.0, bottom: 20.0),
                  child: Text(
                    aboutUsTxt,
                    textDirection: TextDirection.rtl,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
