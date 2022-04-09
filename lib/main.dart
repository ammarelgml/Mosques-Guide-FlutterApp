import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/theme_controller.dart';
import 'bindings/app_binding.dart';
import 'services/locathion_service.dart';
import 'theme/app_theme.dart';
import 'routes.dart';

void main() async {
  await Get.putAsync(() => LocationService().init());//service for listen current location all time
  runApp(MosquesGuideApp());
}

class MosquesGuideApp extends StatelessWidget {
  MosquesGuideApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mosques Guide',
      initialBinding: AppBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      locale: Get.deviceLocale,
      initialRoute: '/',
      getPages: routes(),
    );
  }
}
