import 'package:get/get.dart';
import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/splash/index.dart';
import 'view/settings/index.dart';
import 'view/about_us/index.dart';
import 'view/contact_us/index.dart';
import 'view/settings/account_settings.dart';
import 'view/settings/password_settings.dart';

import 'view/profile/bindings/profile_binding.dart';
import 'view/profile/views/contact_us_view.dart';
import 'view/profile/views/password_view.dart';
import 'package:mosques_guide_app/view/main/index.dart';
import 'view/prayer_timings/bindinds/prayer_times_binding.dart';
import 'view/about_us/index.dart';
import 'view/auth/index.dart';
import 'view/prayer_timings/index.dart';
import 'view/profile/views/profile_inf_view.dart';
import 'view/welcome/index.dart';

// Routes Of the Mosque App
routes() => [
      GetPage(name: "/", page: () => Splash()),
      GetPage(name: "/on_boarding", page: () => OnBoarding()),
      GetPage(name: "/home", page: () => Home()),
      GetPage(name: "/directions", page: () => Directions()),
      GetPage(name: "/settings", page: () => Settings()),
      GetPage(name: "/about_us", page: () => AboutUs()),
      GetPage(name: "/contact_us", page: () => ContactUs()),
      GetPage(name: "/account_settings", page: () => AccountSettings()),
      GetPage(name: "/password_settings", page: () => PasswordSettings()),

  GetPage(name: Routes.ON_BOARDING, page: () => const OnBoarding()),
      GetPage(name: Routes.FORGOT_PASSWORD, page: () => const Home()),
      GetPage(name: Routes.DIRECTIONS, page: () => const Directions()),
      GetPage(
          name: Routes.FORGOT_PASSWORD,
          page: () => PassWordView(),
          binding: ProfileBinding()),
      GetPage(
          name: Routes.CONTACT_US,
          page: () => ContactUsView(),
          binding: ProfileBinding()),
      GetPage(
          name: Routes.PROFILE_INF,
          page: () => ProfileInfView(),
          binding: ProfileBinding()),
      GetPage(name: Routes.MAIN, page: () => Main()),
      GetPage(name: Routes.WELCOME, page: () => Welcome()),
      GetPage(name: Routes.AUTH, page: () => Auth()),
      GetPage(
          name: Routes.PRAYER_TIMINGS,
          page: () => const PrayerTimings(),
          binding: PrayerTimesBinding()),
      GetPage(name: "/${AboutUs.id}", page: () => const AboutUs()),
      // GetPage(name: "/${Settings.id}", page: () => const Settings()),
      // GetPage(name: "/${Profile.id}", page: () => const Profile()),
      // GetPage(name: "/${ContactUs.id}", page: () => const ContactUs()),
    ];

class Routes {
  static const MAIN = '/main';
  static const HOME = '/home';
  static const DIRECTIONS = '/directions';
  static const ON_BOARDING = '/on_boarding';
  static const FORGOT_PASSWORD = '/forgot_password';
  static const CONTACT_US = '/contact_us';
  static const PROFILE_INF = '/profile_inf';
  static const WELCOME = '/welcome';
  static const AUTH = '/auth';
  static const PRAYER_TIMINGS = '/prayer_timings';
  static const ABOUT_US = '/about_us';
}
