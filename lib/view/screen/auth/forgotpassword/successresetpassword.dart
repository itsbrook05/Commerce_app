import 'package:commerce/controller/auth/successresetpassword_controller.dart';
import 'package:commerce/view/widget/LANGUAGE/cutombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "7.5".tr,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "assets/img/Product quality-pana.png",
              height: 450,
              width: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "7.6".tr,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "7.8".tr,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButtonLang(
              textbutton: "7.9".tr,
              onPressed: () {
                controller.goToLogIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
