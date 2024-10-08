import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPaswordViewmodel extends GetxController {
  final _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObSecure = true;
  bool loading = false;
  void loadingTrue() {
    update();
    loading = true;
  }

  void loadingFalse() {
    loading = false;
    update();
  }

  // void login() {
  //   if (formKey.currentState!.validate()) {
  //     loading = true;
  //     try {
  //       _auth
  //           .signInWithEmailAndPassword(
  //               email: emailController.text.toString(),
  //               password: passwordController.text.toString())
  //           .then((value) {
  //         _navigationService.replaceWith(Routes.home);
  //         utils().toast(value.user!.email.toString());
  //         loading = false;
  //       }).onError((error, stackTrace) {
  //         utils().toast(error.toString());
  //         loading = false;
  //       });
  //     } catch (e) {
  //       e.toString();
  //     }
  //   }
  // }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "enter email address";
    } else {}
    return null;
  }

  String? passwordValidation(String? text) {
    if (text!.isEmpty) {
      return "Enter Password";
    } else {
      return null;
    }
  }

  void signup() {
    Get.toNamed(AppRoutes.SignUpScreen);
  }

  void navigateToForgetPassword() {
    Get.toNamed(AppRoutes.ForgetPassword);
  }

  void tousername() {
    Get.toNamed(AppRoutes.UsernameView);
  }

  void toLocation() {
    Get.toNamed(AppRoutes.LocationView);
  }

  void obSecure() {
    print("object");
    isObSecure = !isObSecure;
    update();
  }
}
