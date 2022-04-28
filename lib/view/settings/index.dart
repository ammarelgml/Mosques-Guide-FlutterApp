import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/settings/widgets/button.dart';
import '/view/settings/widgets/header_section.dart';
import '/view/settings/widgets/login_btn.dart';
import 'widgets/lang_btn.dart';

class Settings extends StatelessWidget {
  // const Settings({Key? key}) : super(key: key);

  final bool isConnected;
  Settings({
    this.isConnected = false,
  });

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
                if (isConnected) ...[
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
                      MaterialButton(
                        onPressed: languageChange,
                        child: Ink(
                          padding: const EdgeInsets.all(8.0),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color(0xffF5FAFC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.arrow_back_ios_rounded,
                                    size: 14,
                                  ),
                                  SizedBox(width: 30),
                                  Text(
                                    "العربية",
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff007E6A),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "اللغة",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
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

  languageChange() {
    Get.bottomSheet(
      Container(
          height: 320,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            color: Color(0xffF5FAFC),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Logo
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/language.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              //text
              const Text(
                "اختر اللغة",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  LanguageBtn(title: "English"),
                  LanguageBtn(title: "العربية"),
                ],
              )
            ],
          )),
      barrierColor: const Color(0xff000029).withOpacity(0.3),
      isDismissible: false,
      enableDrag: false,
    );
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
