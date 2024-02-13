import 'package:commerce/core/constants/routes.dart';
import 'package:commerce/view/screen/auth/verifycode_email.dart';
import 'package:commerce/view/screen/auth/forgotpassword/forgotpassword.dart';
import 'package:commerce/view/screen/auth/forgotpassword/resetpassword.dart';
import 'package:commerce/view/screen/auth/forgotpassword/successresetpassword.dart';
import 'package:commerce/view/screen/auth/login.dart';
import 'package:commerce/view/screen/auth/signup.dart';
import 'package:commerce/view/screen/auth/successsignup.dart';
import 'package:commerce/view/screen/auth/forgotpassword/verifycode.dart';
import 'package:commerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Onboarding 
  AppRoute.onboarding: (context) => const OnBoarding(),
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signup : (context) => const SignUp(),
  AppRoute.verifyCodeEmail : (context) => const VerifyCodeEmail(),
  AppRoute.successSignUp : (context) => const SuccessSignUp(),
  AppRoute.forgotPassword : (context) => const ForgotPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),
  AppRoute.resetPassword : (context) => const ResetPassword(),
  AppRoute.successResetPassword : (context) => const SuccessResetPassword(),
  

};
