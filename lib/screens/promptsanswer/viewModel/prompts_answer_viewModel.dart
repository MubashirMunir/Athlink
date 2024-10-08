import 'package:athlink/screens/connect_social/view/connect_social.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptAnswerModel extends GetxController {
  final prompt = TextEditingController();

  bool loading = false;

  final formKey = GlobalKey<FormState>();
  void toConnectSocial() {
    Get.to(() => const ConnectSocialView());
  }
}
