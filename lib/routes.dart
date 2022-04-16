import 'package:get/get.dart';

import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/splash/index.dart';
import 'view/settings/index.dart';

routes() => [
      GetPage(name: "/", page: () => Splash()),
      GetPage(name: "/on_boarding", page: () => OnBoarding()),
      GetPage(name: "/home", page: () => Home()),
      GetPage(name: "/directions", page: () => Directions()),
      GetPage(name: "/settings", page: () => Settings()),
    ];
