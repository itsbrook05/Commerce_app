import 'package:commerce/core/constants/routes.dart';
import 'package:commerce/core/localization/changelocal.dart';
import 'package:commerce/view/widget/LANGUAGE/cutombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
                  height: 50,
                ),
            Image.asset(
              "assets/img/language.png",
              fit: BoxFit.fill,
              height: 365,
              width: 350,
            ),
            const SizedBox(
                  height: 70,
                ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Please choose the language",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "من فضلك ,اختر اللغة",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButtonLang(
                    textbutton: "1.1".tr,
                    onPressed: () {
                      controller.changeLang("ar");
                      Get.offNamed(AppRoute.onboarding);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButtonLang(
                    textbutton: "1.2".tr,
                    onPressed: () {
                      controller.changeLang("en");
                      Get.offNamed(AppRoute.onboarding);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
