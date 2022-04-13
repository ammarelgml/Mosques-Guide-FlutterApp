import 'package:get/get.dart';
import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/splash/index.dart';

routes() => [
      GetPage(name: "/", page: () => const Splash()),
      GetPage(name: "/${OnBoarding.id}", page: () => const OnBoarding()),
      GetPage(name: "/${Home.id}", page: () => const Home()),
      GetPage(name: "/${Directions.id}", page: () => const Directions()),
    ];
