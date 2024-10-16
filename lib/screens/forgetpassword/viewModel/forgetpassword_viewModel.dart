import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordModel extends GetxController {
  final emailController = TextEditingController();

  bool loading = false;
  final formKey = GlobalKey<FormState>();

  void ToVerifyView() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.VerifyPassword1);
    }
  }

  @override
  void dispose() {
    emailController;
    super.dispose();
  }
}
