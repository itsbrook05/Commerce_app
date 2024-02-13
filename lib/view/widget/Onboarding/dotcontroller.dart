import 'package:commerce/controller/onboardingcontroller.dart';
import 'package:commerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>
    (builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(
                    milliseconds: 900),                  
                  width: controller.currentpage==index ? 20 : 6,
                  height: 5,
                  decoration: BoxDecoration(
                      color: controller.currentpage==index ? const Color.fromARGB(255, 255, 0, 0):const Color.fromARGB(255, 250, 142, 142),
                      borderRadius: BorderRadius.circular(15)),
                ))
      ],
    ), );
  }
}
