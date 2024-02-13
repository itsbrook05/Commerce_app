import 'package:commerce/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogIn();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {

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
