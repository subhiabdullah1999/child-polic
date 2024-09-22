import 'package:children_police/core/constants/app_name_routes.dart';
import 'package:children_police/core/constants/imagesApp.dart';
import 'package:children_police/core/services.dart';
import 'package:children_police/data/datasource/static/onbarding_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingCntroller extends GetxController {}

class OnboardingCntrollerImp extends OnboardingCntroller {
  MyServices myServices = Get.find();
  PageController nextPageView = PageController();
  int indexPageView = 0;
  List imagesOnboardingList = [
    ImagesApp.imageOnboarding1,
    ImagesApp.imageOnboarding2,
    ImagesApp.imageOnboarding3
  ];
  List titelOnboardingList = [
    TextOnboarding.titelOnboarding1,
    TextOnboarding.titelOnboarding2,
    TextOnboarding.titelOnboarding3
  ];
  List subtitelOnboardingList = [
    TextOnboarding.subtitelOnboarding1,
    TextOnboarding.subtitelOnboarding2,
    TextOnboarding.subtitelOnboarding3
  ];
  updateUi() {
    update();
  }

  goToHomeScreen() {
    Get.offAllNamed(AppNameRout.home);
  }
}
