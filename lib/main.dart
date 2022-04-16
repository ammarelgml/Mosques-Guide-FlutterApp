import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/theme_controller.dart';
import 'bindings/app_binding.dart';
import 'theme/app_theme.dart';
import 'routes.dart';

void main() async {
  runApp(MosquesGuideApp());
}

class MosquesGuideApp extends StatelessWidget {
  MosquesGuideApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
      title: 'Mosques Guide',
      initialBinding: AppBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      locale: Get.deviceLocale,
      initialRoute: '/homePage',
      getPages: routes(),
    );
  }
}
