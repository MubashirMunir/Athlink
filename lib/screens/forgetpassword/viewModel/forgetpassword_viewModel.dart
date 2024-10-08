import 'package:athlink/screens/verifypassword/verifypassword_view/verifypassword_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordModel extends GetxController {
  final emailController = TextEditingController();

  bool loading = false;
  final formKey = GlobalKey<FormState>();

  void ToVerifyView() {
    if (formKey.currentState!.validate()) {
      Get.to(() => VerifyPassword1(
            email: emailController.text,
          ));
    }
  }

  @override
  void dispose() {
    emailController;
    super.dispose();
  }
}
