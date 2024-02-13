import 'package:commerce/controller/onboardingcontroller.dart';
import 'package:commerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SilderOnBoarding extends GetView<OnBoardingControllerImp> {
  const SilderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
        fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  height: 380,
                  width: 380,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style:  const TextStyle(height: 1.3, fontSize: 18, fontWeight: FontWeight.w500),
                    )),
              ],
            ));
  }
}
