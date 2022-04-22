import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/settings/widgets/button.dart';
import '/view/settings/widgets/header_section.dart';
import '/view/settings/widgets/login_btn.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SettingsHeader(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const Text(
                  "معلومات الحساب",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D3437),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Button(onPressed: accountSettings, title: "تعديل الحساب"),
                Button(onPressed: passwordSettings, title: "تعديل كلمة المرور"),
                const Text(
                  "معلومات التطبيق",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2D3437),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Button(onPressed: languageChange, title: "اللغة"),
                Button(onPressed: shareApp, title: "شارك التطبيق"),
                Button(onPressed: contactUs, title: "تواصل معنا"),
                Button(onPressed: aboutUs, title: "عن التطبيق"),
                const Center(child: LoginBtn()),
              ],
            )),
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
    Get.toNamed('/contact_us');
  }

  aboutUs() {
    Get.toNamed('/about_us');
  }

  accountSettings() {
    print("account Settings Btn");
  }

  passwordSettings() {
    print("password Settings Btn");
  }
}
