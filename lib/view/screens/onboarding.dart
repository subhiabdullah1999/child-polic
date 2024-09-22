// ignore_for_file: prefer_const_constructors

import 'package:children_police/controller/onboarding_controller.dart';
import 'package:children_police/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingCntrollerImp());
    return GetBuilder<OnboardingCntrollerImp>(
        builder: (controller) => Scaffold(
              backgroundColor: AppColors.blacColor2,
              body: SizedBox(
                height: Get.height,
                width: Get.width,
                child: PageView.builder(
                    controller: controller.nextPageView,
                    onPageChanged: (int valeu) {
                      controller.indexPageView = valeu;
                      controller.updateUi();
                    },
                    itemCount: controller.imagesOnboardingList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: Get.height / 1.5,
                            width: Get.width,
                            child: Image.asset(
                              controller.imagesOnboardingList[index],
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 3; i++)
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  height: 7,
                                  width: controller.indexPageView == i ? 20 : 7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: controller.indexPageView == i
                                          ? AppColors.blueColor
                                          : AppColors.whitet1),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.titelOnboardingList[index],
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: AppColors.whitet1),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.subtitelOnboardingList[index],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: AppColors.whitet2, height: 1.6),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              index == 2
                                  ? controller.goToHomeScreen()
                                  : controller.nextPageView.animateToPage(
                                      index + 1,
                                      duration: Duration(milliseconds: 700),
                                      curve: Curves.linear);
                              controller.updateUi();
                              controller.myServices.sharedPreferences
                                  .setBool("showonboarding", true);
                            },
                            child: CircleAvatar(
                                radius: 45,
                                backgroundColor: AppColors.blueColor2,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: AppColors.blueColor3,
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: AppColors.blueColor4,
                                    child: controller
                                                .myServices.sharedPreferences
                                                .get("lang") ==
                                            "ar"
                                        ? Icon(
                                            Icons.arrow_forward_ios,
                                            color: AppColors.whitet1,
                                          )
                                        : Icon(
                                            Icons.arrow_back_ios,
                                            color: AppColors.whitet1,
                                          ),
                                  ),
                                )),
                          )
                        ],
                      );
                    }),
              ),
            ));
  }
}
