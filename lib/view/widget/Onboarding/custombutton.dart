import 'package:commerce/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),    
      height: 60,
      width: 300,
      child: MaterialButton(
        onPressed: () {
        controller.next();
        },
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        padding: const EdgeInsets.all(10),
        color: const Color.fromRGBO(80,200,120,1.000),
        child:  Text(
          "2.6".tr,
          style:Theme.of(context).textTheme.displaySmall,          
        ),
        
      ),
    );
  }
}
