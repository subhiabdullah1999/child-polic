import 'package:children_police/core/constants/app_name_routes.dart';
import 'package:children_police/core/services.dart';

import 'package:get/get.dart';

class SplashController extends GetxController {
  MyServices myServices = Get.find();
  timerSplash() {
    Future.delayed(const Duration(seconds: 3), () {
      myServices.sharedPreferences.getBool("showonboarding") == true
          ? Get.offNamed(AppNameRout.home)
          : Get.offNamed(AppNameRout.onboardingScreens);
    });
  }

  @override
  void onInit() {
    myServices.sharedPreferences.setString("lang", "ar");
    timerSplash();
    super.onInit();
  }
}
