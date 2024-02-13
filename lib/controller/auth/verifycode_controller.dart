import 'package:commerce/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
    late  String verifycode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
    Get.delete<VerifyCodeControllerImp>();
  }

  @override
  void onInit() {
    super.onInit();
  }

}
