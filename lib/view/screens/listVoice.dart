import 'package:children_police/controller/list_voice_controller.dart';
import 'package:children_police/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListVoiceScreen extends StatelessWidget {
  ListVoiceScreen({super.key});
  final listVoiceController = Get.put(ListVoiceContrllerImp());

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
          listVoiceController.titleVice!,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: AppColors.whitet1),
        ),
        leading: IconButton(
            onPressed: () {
              listVoiceController.goBack();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GridView.builder(
            itemCount: listVoiceController.indexListVoice == 1
                ? listVoiceController.listVoiceMocafaa.length
                : listVoiceController.indexListVoice == 0
                    ? listVoiceController.listVoicetarheb.length
                    : listVoiceController.listVoiceSalyAndHasan.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 70, mainAxisSpacing: 15),
            itemBuilder: (context, indix) {
              return InkWell(
                onTap: () {},
                child: Card(
                  color: AppColors.whitet1,
                  child: Center(
                    child: Text(
                      listVoiceController.indexListVoice == 1
                          ? listVoiceController.listVoiceMocafaa[indix]
                          : listVoiceController.indexListVoice == 0
                              ? listVoiceController.listVoicetarheb[indix]
                              : listVoiceController
                                  .listVoiceSalyAndHasan[indix],
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
