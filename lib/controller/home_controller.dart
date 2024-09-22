import 'package:children_police/core/constants/app_name_routes.dart';
import 'package:get/get.dart';

abstract class HomeControllser extends GetxController {}

class HomeControllserImp extends HomeControllser {
  String? titleVoice;
  int indexListVoice = 0;
  goBack() {
    Get.back();
  }

  goToVoiceScreen() {
    Get.toNamed(AppNameRout.listVoice, arguments: {
      "titleVoice": titleVoice,
      "indexListVoice": indexListVoice
    });
  }
}
