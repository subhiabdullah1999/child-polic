import 'package:children_police/controller/home_controller.dart';
import 'package:children_police/controller/onboarding_controller.dart';
import 'package:children_police/core/constants/colors_app.dart';
import 'package:children_police/view/widgets/home_widgets/custom_myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final onboardingController = Get.put(OnboardingCntrollerImp());
  final homeController = Get.put(HomeControllserImp());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blacColor2,
        appBar: AppBar(
          backgroundColor: AppColors.blacColor3,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "شرطة الاطفال",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColors.whitet1),
          ),
          leading: IconButton(
              onPressed: () {
                homeController.goBack();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        endDrawer: const MyDrawer(),
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.82),
              itemCount: onboardingController.titelOnboardingList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    homeController.indexListVoice = index;
                    homeController.titleVoice =
                        onboardingController.titelOnboardingList[index];
                    homeController.goToVoiceScreen();
                  },
                  child: Container(
                    height: 250,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: AppColors.whitet1,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.whitet2,
                              offset: Offset(-5, 5),
                              blurRadius: 10)
                        ]),
                    child: Column(children: [
                      SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: Image.asset(
                            onboardingController.imagesOnboardingList[index]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        onboardingController.titelOnboardingList[index],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 20),
                      )
                    ]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
