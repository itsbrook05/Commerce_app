import 'package:commerce/controller/auth/forgotpassword_controller.dart';
import 'package:commerce/core/functions/validinput.dart';
import 'package:commerce/view/widget/auth/costumtextformauth.dart';
import 'package:commerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller = Get.put(ForgotPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "5".tr,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [              
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "5.1".tr,
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
                  valid: (val){
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
                  height: 30,
                ),
                CustomButtonAuth(
                  style: Theme.of(context).textTheme.titleSmall,
                  onPressed: () {
                    controller.goToVerifyCode();
                  },
                  text: "5.3".tr,
                  color: const Color.fromRGBO(80, 200, 120, 1.000),
                ),            
              ],
            ),
          ),
        ));
  }
}
