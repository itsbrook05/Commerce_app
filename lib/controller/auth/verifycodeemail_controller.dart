import 'package:commerce/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeEmailController extends GetxController {
  checkCodeEmail();
  goToSuccessSignUp();
}

class VerifyCodeEmailControllerImp extends VerifyCodeEmailController {

  

  @override
  checkCodeEmail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
    Get.delete<VerifyCodeEmailControllerImp>();
  }

  @override
  void onInit() {
    
    super.onInit();
  }

  @override
  void dispose() {
  
    super.dispose();
  }
  
  
}
