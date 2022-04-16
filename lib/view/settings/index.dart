import 'package:flutter/material.dart';
import 'package:mosques_guide_app/view/settings/widgets/button.dart';
import 'package:mosques_guide_app/view/settings/widgets/header_section.dart';

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
              Button(onPressed: onPressed, title: "اللغة"),
            ],
          ),
        )
      ],
    ));
  }

  onPressed() {
    print("ClickMe");
  }
}
