import 'package:get/get.dart';

validInput(String val, int max, int min, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone";
    }
  }

  if (val.isEmpty) {
    return "Can't be Empty";
  }

  if (val.length < min) {
    return "Can't be Less than $min";
  }

  if (val.length > max) {
    return "Can't be Larger than $max";
  }
}
