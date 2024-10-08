import 'package:athlink/screens/connect_social/view/connect_social.dart';
import 'package:athlink/screens/prompts%20_list/prompts_view/prompts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsViewModel extends GetxController {
  final prompt = TextEditingController();

  bool loading = false;

  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  void toPromptsList() {
    if (formKey.currentState!.validate()) {
      Get.to(() => const PromptsListView());
    }
  }

  // int a = 0;
  bool admore = false;
  int count = 1;
  void add() {
    if (count < 3) {
      count++;
    } else {
      count = 0;
    }
    // count < 2 ? count++ : count--;

    update();
  }

  void connectSocial() {
    Get.to(() => const ConnectSocialView());
  }
}
