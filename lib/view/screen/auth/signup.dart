import 'package:commerce/controller/auth/signupcontroller.dart';
import 'package:commerce/core/functions/validinput.dart';
import 'package:commerce/view/widget/auth/costumtextformauth.dart';
import 'package:commerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "4.00".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: GetBuilder<SignUpControllerImp>(builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
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
                  "4.5".tr,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 30, 5, "username");
                  },
                  isPassword: false,
                  textInputType: TextInputType.text,
                  mycontroller: controller.username,
                  hinttext: "4.1".tr,
                  labeltext: "4".tr,
                  iconData: Icons.person_2_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 25, 5, "phone");
                  },
                  isPassword: false,
                  textInputType: TextInputType.phone,
                  mycontroller: controller.phone,
                  hinttext: "4.3".tr,
                  labeltext: "4.2".tr,
                  iconData: Icons.phone,
                ),
                const SizedBox(
                  height: 20,
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
                GetBuilder<SignUpControllerImp>(builder: (controller)=> CustomTextFormAuth(
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
                const SizedBox(
                  height: 30,
                ),
                CustomButtonAuth(
                  style: Theme.of(context).textTheme.titleSmall,
                  onPressed: () {
                    controller.signUp();
                  },
                  text: "3.9".tr,
                  color: const Color.fromRGBO(80, 200, 120, 1.000),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButtonAuth(
                  onPressed: () {
                    controller.goToLogIn();
                  },
                  style: Theme.of(context).textTheme.titleMedium,
                  color: Colors.white,
                  text: "4.4".tr,
                ),
              ],
            ),
          ),
        ) ),
        
        
        );
  }
}
