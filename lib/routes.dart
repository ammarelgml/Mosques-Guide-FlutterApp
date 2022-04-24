import 'package:get/get.dart';
import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/profile/bindings/profile_binding.dart';
import 'view/profile/views/contact_us_view.dart';
import 'view/profile/views/password_view.dart';
import 'package:mosques_guide_app/view/main/index.dart';
import 'view/prayer_timings/bindinds/prayer_times_binding.dart';
import 'view/about_us/index.dart';
import 'view/auth/index.dart';
import 'view/contact_us/index.dart';
import 'view/prayer_timings/index.dart';
import 'view/profile/index.dart';
import 'view/profile/views/profile_inf_view.dart';
import 'view/settings/index.dart';
import 'view/welcome/index.dart';

// Routes Of the Mosque App
routes() => [
      GetPage(name: "/on_boarding", page: () => const OnBoarding()),
      GetPage(name: "/home", page: () => const Home()),
      GetPage(name: "/directions", page: () => const Directions()),
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
      GetPage(name: "/${Main.id}", page: () => Main()),
      GetPage(name: "/${Welcome.id}", page: () => const Welcome()),
      GetPage(name: "/${Auth.id}", page: () => const Auth()),
      GetPage(name: "/${OnBoarding.id}", page: () => const OnBoarding()),
      GetPage(name: "/${Home.id}", page: () => const Home()),
      GetPage(name: "/${Directions.id}", page: () => const Directions()),
      GetPage(
        name: "/${PrayerTimings.id}",
        page: () => const PrayerTimings(),
        binding: PrayerTimesBinding(),
      ),
      GetPage(name: "/${Settings.id}", page: () => const Settings()),
      GetPage(name: "/${Profile.id}", page: () => const Profile()),
      GetPage(name: "/${AboutUs.id}", page: () => const AboutUs()),
      GetPage(name: "/${ContactUs.id}", page: () => const ContactUs()),
    ];

class Routes {
  // ignore: constant_identifier_names
  static const FORGOT_PASSWORD = '/forgot_password';
  static const CONTACT_US = '/contact_us';
  static const PROFILE_INF = '/profile_inf';
}
