import 'package:children_police/core/constants/app_name_routes.dart';
import 'package:children_police/view/screens/home_screen.dart';
import 'package:children_police/view/screens/listVoice.dart';
import 'package:children_police/view/screens/onboarding.dart';
import 'package:children_police/view/screens/splash.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SplashScreen()),
  GetPage(name: AppNameRout.home, page: () => HomeScreen()),
  GetPage(
      name: AppNameRout.onboardingScreens,
      page: () => const OnboardingScreens()),
  GetPage(name: AppNameRout.listVoice, page: () => ListVoiceScreen())
];
