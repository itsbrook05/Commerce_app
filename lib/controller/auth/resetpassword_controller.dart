import 'package:commerce/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;

  bool isshowpassword = true;
  bool isshowrepassword = true;
  showPasswoord() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  showRePasswoord() {
    isshowrepassword = isshowrepassword == true ? false : true;
    update();
  }

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
      Get.delete<ResetPasswordControllerImp>();
    } else {
      print("Not valid");
    }
    
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
