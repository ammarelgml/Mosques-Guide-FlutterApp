import 'package:get/get.dart';
import 'package:mosques_guide_app/view/main/index.dart';
import 'view/about_us/index.dart';
import 'view/auth/index.dart';
import 'view/contact_us/index.dart';
import 'view/prayer_timings/index.dart';
import 'view/profile/index.dart';
import 'view/settings/index.dart';
import 'view/welcome/index.dart';
import 'view/directions/index.dart';
import 'view/home/index.dart';
import 'view/onboarding/index.dart';
import 'view/splash/index.dart';

// Routes Of the Mosque App
routes() => [
      GetPage(name: "/", page: () => const Splash()),
      GetPage(name: "/${Main.id}", page: () => Main()),
      GetPage(name: "/${Welcome.id}", page: () => const Welcome()),
      GetPage(name: "/${Auth.id}", page: () => const Auth()),
      GetPage(name: "/${OnBoarding.id}", page: () => const OnBoarding()),
      GetPage(name: "/${Home.id}", page: () => const Home()),
      GetPage(name: "/${Directions.id}", page: () => const Directions()),
      GetPage(name: "/${PrayerTimings.id}", page: () => const PrayerTimings()),
      GetPage(name: "/${Settings.id}", page: () => const Settings()),
      GetPage(name: "/${Profile.id}", page: () => const Profile()),
      GetPage(name: "/${AboutUs.id}", page: () => const AboutUs()),
      GetPage(name: "/${ContactUs.id}", page: () => const ContactUs()),
    ];
