import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/services/locathion_service.dart';
import 'controller/theme_controller.dart';
import 'bindings/app_binding.dart';
import 'theme/app_theme.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Service for listen current location all time
  await Get.putAsync(() => LocationService().init());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: primaryColor));
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
      initialRoute: '/home',
      getPages: routes(),
    );
  }
}
