import 'package:commerce/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;
  showPasswoord() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("Not valid");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
    Get.delete<LoginControllerImp>();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
    Get.delete<LoginControllerImp>();
  }
}
