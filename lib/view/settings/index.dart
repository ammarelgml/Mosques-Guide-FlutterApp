import 'package:flutter/material.dart';
import 'package:mosques_guide_app/view/settings/widgets/button.dart';
import 'package:mosques_guide_app/view/settings/widgets/header_section.dart';
import 'package:mosques_guide_app/view/settings/widgets/login_btn.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SettingsHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "معلومات التطبيق",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Button(onPressed: languageChange, title: "اللغة"),
              Button(onPressed: shareApp, title: "شارك التطبيق"),
              Button(onPressed: contactUs, title: "تواصل معنا"),
              Button(onPressed: aboutUs, title: "عن التطبيق"),
              LoginBtn(),
            ],
          ),
        )
      ],
    ));
  }

  languageChange() {
    print("Language Btn");
  }

  shareApp() {
    print("Share App Btn");
  }

  contactUs() {
    print("Contact Us Btn");
  }

  aboutUs() {
    print("About Us Btn");
  }
}
