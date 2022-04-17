import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mosques_guide_app/view/main/index.dart';
import 'controller/theme_controller.dart';
import 'bindings/app_binding.dart';
import 'theme/app_theme.dart';
import 'services/location_service.dart';
import 'services/storage_service.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Service for listen current location all time
  await Get.putAsync(() => LocationService().init());
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: primaryColor));
  runApp(MosquesGuideApp());
}

class MosquesGuideApp extends StatelessWidget {
  MosquesGuideApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // textDirection: TextDirection.rtl,
      debugShowCheckedModeBanner: false,
      title: 'Mosques Guide',
      initialBinding: AppBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      locale: Get.deviceLocale,
      initialRoute: '/${Main.id}',
      getPages: routes(),
    );
  }
}
