import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/settings/widgets/button.dart';
import '/view/settings/widgets/header_section.dart';
import '/view/settings/widgets/login_btn.dart';
import 'widgets/language_btn.dart';

class Settings extends StatefulWidget {
  final bool isConnected;
  Settings({this.isConnected = false});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
              children: <Widget>[
                // If User is Connected to the app
                if (widget.isConnected) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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
                      Button(
                          onPressed: passwordSettings,
                          title: "تعديل كلمة المرور"),
                    ],
                  ),
                  // If User is Not Connected to the app
                ] else ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "معلومات التطبيق",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D3437),
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      // Button(onPressed: languageChange, title: "اللغة"),
                      LanguageBtn(),
                      Button(onPressed: shareApp, title: "شارك التطبيق"),
                      Button(onPressed: contactUs, title: "تواصل معنا"),
                      Button(onPressed: aboutUs, title: "عن التطبيق"),
                    ],
                  ),
                ],
                const Center(child: LoginBtn()),
              ],
            )),
          ),
        )
      ],
    ));
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
    Get.toNamed('/account_settings');
  }

  passwordSettings() {
    Get.toNamed('/password_settings');
  }
}
