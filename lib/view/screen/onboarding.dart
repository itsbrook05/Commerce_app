import 'package:commerce/controller/onboardingcontroller.dart';
import 'package:commerce/view/widget/Onboarding/custombutton.dart';
import 'package:commerce/view/widget/Onboarding/dotcontroller.dart';
import 'package:commerce/view/widget/Onboarding/slideronboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SilderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CustomDotControllerOnBoarding(),
                    SizedBox(
                      height: 60,
                    ),
                    CustomButtonOnBoarding(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
