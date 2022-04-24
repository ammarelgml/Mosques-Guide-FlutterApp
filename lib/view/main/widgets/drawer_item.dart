import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItem {
  final String title;
  final IconData icon;

  const DrawerItem(this.title, this.icon);
}

class DrawerItems {
  static const home = DrawerItem("الرئيسية", FontAwesomeIcons.house);
  static const account = DrawerItem("حسابي", FontAwesomeIcons.person);
  static const lang = DrawerItem("اللغة", FontAwesomeIcons.language);
  static const shere = DrawerItem("شارك التطبيق", FontAwesomeIcons.shareNodes);
  static const contact = DrawerItem("تواصل معانا", FontAwesomeIcons.phone);
  static const about = DrawerItem("عن التطبيق", FontAwesomeIcons.info);

  static final List<DrawerItem> all = [home, account, lang, shere, contact, about];
}
