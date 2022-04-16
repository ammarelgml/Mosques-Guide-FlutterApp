import 'package:flutter/material.dart';

class SettingsHeader extends StatefulWidget {
  SettingsHeader({Key? key}) : super(key: key);

  @override
  State<SettingsHeader> createState() => _SettingsHeaderState();
}

class _SettingsHeaderState extends State<SettingsHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                color: const Color(0xff007E6A),
                borderRadius: BorderRadius.circular(16.0),
                image: const DecorationImage(
                  image: AssetImage("assets/profile_cover.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            "حسابي",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 190,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_img.png'),
                  backgroundColor: Colors.transparent,
                  radius: 38.0,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
        const Text(
          "مرحبا بك",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Text(
          "زائر",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        )
      ],
    );
  }
}
