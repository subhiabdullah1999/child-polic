import 'package:children_police/controller/splash_controller.dart';
import 'package:children_police/core/constants/images_rive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    double hightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: hightScreen,
        width: double.infinity,
        child: const RiveAnimation.asset(
          ImagesAppRive.splashImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
