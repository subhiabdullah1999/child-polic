import 'dart:ffi';

import 'package:get/get.dart';

abstract class ListVoiceContrller extends GetxController {}

class ListVoiceContrllerImp extends ListVoiceContrller {
  List listVoiceMocafaa = [
    "صوت سوري ",
    "صوت عراقي ",
    "صوت مصري ",
    "صوت خليجي ",
    "صوت يمني ",
    "صوت مغربي ",
  ];
  List listVoicetarheb = [
    "صوت سوري ",
    "صوت عراقي ",
    "صوت مصري ",
    "صوت خليجي ",
  ];
  List listVoiceSalyAndHasan = [
    "ترهيب سالي ",
    "ترهيب حسن ",
    "مكافئة سالي ",
    "مكافئة حسن ",
  ];
  String? titleVice;
  late int indexListVoice;
  goBack() {
    Get.back();
  }

  @override
  void onInit() {
    titleVice = Get.arguments["titleVoice"];
    indexListVoice = Get.arguments["indexListVoice"];
    super.onInit();
  }
}
