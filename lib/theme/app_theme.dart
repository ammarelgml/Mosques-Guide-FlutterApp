import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF007E6A);

Map<int, Color> _primaryColorMap = const {
  50: Color.fromRGBO(0, 126, 106, .1),
  100: Color.fromRGBO(0, 126, 106, .2),
  200: Color.fromRGBO(0, 126, 106, .3),
  300: Color.fromRGBO(0, 126, 106, .4),
  400: Color.fromRGBO(0, 126, 106, .5),
  500: Color.fromRGBO(0, 126, 106, .6),
  600: Color.fromRGBO(0, 126, 106, .7),
  700: Color.fromRGBO(0, 126, 106, .8),
  800: Color.fromRGBO(0, 126, 106, .9),
  900: Color.fromRGBO(0, 126, 106, 1),
};

final MaterialColor _primaryColorSwatch = MaterialColor(primaryColor.value, _primaryColorMap);

class Themes {
  static final lightTheme = ThemeData(
    primaryColor: primaryColor,
    primarySwatch: _primaryColorSwatch,
    fontFamily: 'FFShamelFamily'
  );

  static final darkTheme = ThemeData();
}
