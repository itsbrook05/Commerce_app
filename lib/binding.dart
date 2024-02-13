import 'package:commerce/controller/auth/signupcontroller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
    
  }

}