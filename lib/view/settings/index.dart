import 'package:flutter/material.dart';
import 'package:mosques_guide_app/view/settings/widgets/header_section.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SettingsHeader(),
      ],
    ));
  }
}
