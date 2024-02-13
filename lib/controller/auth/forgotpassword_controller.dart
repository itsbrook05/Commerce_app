import 'package:commerce/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verifyCode);
      Get.delete<ForgotPasswordControllerImp>();
    } else {
      print("Not valid");
    }  
  }

  @override
  void onInit() {
    email = TextEditingController();
    
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
  
}
