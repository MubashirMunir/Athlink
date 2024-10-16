import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginViewModel extends GetxController {
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

  void obSecure() {
    print("thek ha bhai");
    isObSecure = !isObSecure;
    update();
  }

  void login() async {
    var data = {
      'email': emailController.text.toString(),
      'password': passwordController.text.toString(),
    };
    try {
      final response = await http.post(Uri.parse(API.baseUrl + API.loginOtp),
          headers: {
            "Content-Type": "application/json",
            "Accept": "*/*",
          },
          body: jsonEncode(data));

      print(response);
      // Check the response status
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }
}
