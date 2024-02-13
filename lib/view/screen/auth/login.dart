import 'package:commerce/controller/auth/logincontroller.dart';
import 'package:commerce/core/constants/imageasset.dart';
import 'package:commerce/core/functions/validinput.dart';
import 'package:commerce/view/widget/auth/costumtextformauth.dart';
import 'package:commerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "3".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                Image.asset(
                  ImageAsset.imageLogo,
                  height: 140,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "3.1".tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "3.2".tr,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 100, 5, "email");
                  },
                  isPassword: false,
                  textInputType: TextInputType.emailAddress,
                  mycontroller: controller.email,
                  hinttext: "3.4".tr,
                  labeltext: "3.3".tr,
                  iconData: Icons.mail_outline_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<LoginControllerImp>(builder: (controller)=> CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 50, 6, "password");
                  },
                  onTapIcon: () {
                    controller.showPasswoord();
                  },
                  isPassword: controller.isshowpassword,
                  textInputType: TextInputType.visiblePassword,
                  mycontroller: controller.password,
                  hinttext: "3.6".tr,
                  labeltext: "3.5".tr,
                  iconData: controller.isshowpassword == true?Icons.visibility_off_outlined : Icons.visibility,
                ),),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgotPassword();
                  },
                  child: Text(
                    "3.7".tr,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonAuth(
                  style: Theme.of(context).textTheme.titleSmall,
                  onPressed: () {
                    controller.login();
                  },
                  text: "3.8".tr,
                  color: const Color.fromRGBO(80, 200, 120, 1.000),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButtonAuth(
                  onPressed: () {
                    controller.goToSignUp();
                  },
                  style: Theme.of(context).textTheme.titleMedium,
                  color: Colors.white,
                  text: "3.9".tr,
                ),
              ],
            ),
          ),
        ));
  }
}
