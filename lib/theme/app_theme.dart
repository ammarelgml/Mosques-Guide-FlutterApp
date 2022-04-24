import 'package:flutter/material.dart';
import 'package:mosques_guide_app/theme/styles.dart';

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
  static final lightTheme =
      ThemeData(primaryColor: primaryColor, primarySwatch: _primaryColorSwatch, fontFamily: 'FFShamelFamily');


  static final darkTheme = ThemeData();

 static ThemeData getLightTheme() {
    // TODO change font dynamically
    return ThemeData(
      fontFamily: 'Trajan Pro',
      backgroundColor: const Color(0xffffffff).withOpacity(0.1),
      // primaryColor: Colors.white,
      primaryColor: const Color(0xff007E6A),
      primaryColorLight: const Color(0xffe8f5fa),
      accentColor:const Color(0xff007E6A),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(elevation: 0, foregroundColor: Colors.white),
      brightness: Brightness.light,
      // accentColor: Ui.parseColor(setting.value.mainColor),
      // dividerColor: Ui.parseColor(setting.value.accentColor, opacity: 0.1),
      // focusColor: Ui.parseColor(setting.value.accentColor),
      // hintColor: Ui.parseColor(setting.value.secondColor),
      // textButtonTheme: TextButtonThemeData(
      //   style: TextButton.styleFrom(primary: Ui.parseColor(setting.value.mainColor)),
      // ),
      colorScheme: const ColorScheme.light(
        primary: Color(0xff007E6A),
        secondary: Color(0xff007E6A),
      ),
      // textTheme: GoogleFonts.getTextTheme(
      //   getLocale().toString().startsWith('ar') ? 'Cairo' : 'Poppins',
      //   TextTheme(
      //     headline6: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.mainColor), height: 1.3),
      //     headline5: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.secondColor), height: 1.3),
      //     headline4: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.secondColor), height: 1.3),
      //     headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.secondColor), height: 1.3),
      //     headline2: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.mainColor), height: 1.4),
      //     headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300, color: Ui.parseColor(setting.value.secondColor), height: 1.4),
      //     subtitle2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Ui.parseColor(setting.value.secondColor), height: 1.2),
      //     subtitle1: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.mainColor), height: 1.2),
      //     bodyText2: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600, color: Ui.parseColor(setting.value.secondColor), height: 1.2),
      //     bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.secondColor), height: 1.2),
      //     caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300, color: Ui.parseColor(setting.value.accentColor), height: 1.2),
      //   ),
      // )
    );
  }
}
