import 'package:commerce/controller/auth/resetpassword_controller.dart';
import 'package:commerce/core/functions/validinput.dart';
import 'package:commerce/view/widget/auth/costumtextformauth.dart';
import 'package:commerce/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "7".tr,
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
                  "7.1".tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "7.2".tr,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                GetBuilder<ResetPasswordControllerImp>(builder: (controller)=> CustomTextFormAuth(
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
                  height: 20,
                ),
                GetBuilder<ResetPasswordControllerImp>(builder: (controller)=> CustomTextFormAuth(
                  valid: (val) {
                    return validInput(val!, 50, 6, "password");
                  },
                  onTapIcon: () {
                    controller.showRePasswoord();
                  },
                  isPassword: controller.isshowrepassword,
                  textInputType: TextInputType.visiblePassword,
                  mycontroller: controller.repassword,
                  hinttext: "3.6".tr,
                  labeltext: "3.5".tr,
                  iconData: controller.isshowrepassword == true?Icons.visibility_off_outlined : Icons.visibility,
                ),),            
                        
                const SizedBox(
                  height: 30,
                ),
                CustomButtonAuth(
                  style: Theme.of(context).textTheme.titleSmall,
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  },
                  text: "7.4".tr,
                  color: const Color.fromRGBO(80, 200, 120, 1.000),
                ),            
              ],
            ),
          ),
        ));
  }
}
