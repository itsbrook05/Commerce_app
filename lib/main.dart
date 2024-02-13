import 'package:commerce/binding.dart';
import 'package:commerce/core/localization/changelocal.dart';
import 'package:commerce/core/localization/translation.dart';
import 'package:commerce/core/services/service.dart';
import 'package:commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screen/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      title: 'CodeWithBrook',
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      home:const  Language(),
      routes: routes,
    );
  }
}
