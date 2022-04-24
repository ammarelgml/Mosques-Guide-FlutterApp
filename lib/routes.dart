import 'package:get/get.dart';
import 'package:mosques_guide_app/view/profile/bindings/profile_binding.dart';
import 'package:mosques_guide_app/view/profile/views/contact_us_view.dart';
import 'package:mosques_guide_app/view/profile/views/profile_inf_view.dart';

import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/profile/views/password_view.dart';
import 'view/splash/index.dart';

routes() => [
      GetPage(name: "/", page: () => const Splash()),
      GetPage(name: "/on_boarding", page: () => OnBoarding()),
      GetPage(name: "/home", page: () => Home()),
      GetPage(name: "/directions", page: () => Directions()),

      GetPage(name: Routes.FORGOT_PASSWORD, page: () => PassWordView(), binding: ProfileBinding()),
      GetPage(name: Routes.CONTACT_US, page: () => ContactUsView(), binding: ProfileBinding()),
      GetPage(name: Routes.PROFILE_INF, page: () => ProfileInfView(), binding: ProfileBinding()),
    ];



class Routes {
  // ignore: constant_identifier_names
  static const FORGOT_PASSWORD = '/forgot_password';
  static const CONTACT_US = '/contact_us';
  static const PROFILE_INF = '/profile_inf';
}