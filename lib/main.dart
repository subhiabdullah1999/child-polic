import 'package:children_police/binding.dart';
import 'package:children_police/core/localezation/localization_controller.dart';
import 'package:children_police/core/localezation/transliation.dart';
import 'package:children_police/core/services.dart';
import 'package:children_police/route.dart';
import 'package:children_police/view/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalizationController controller = Get.put(LocalizationController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      getPages: routes,
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Children Police',
      theme: controller.appTheme,
      home: const SplashScreen(),
    );
  }
}
