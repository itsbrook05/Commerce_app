import 'package:commerce/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogIn();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {

  @override
  

  @override
  goToLogIn() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    super.onInit();
  }

}