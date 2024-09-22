import 'package:children_police/core/constants/app_them.dart';
import 'package:children_police/core/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    // ignore: unrelated_type_equality_checks
    appTheme = locale == "ar" ? themeArabic : themeEnglish;
    Get.updateLocale(locale);
    Get.changeTheme(appTheme);
  }

  @override
  void onInit() {
    String? sharedPreLang = myServices.sharedPreferences.getString("lang");

    if (sharedPreLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPreLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }

    super.onInit();
  }
}
