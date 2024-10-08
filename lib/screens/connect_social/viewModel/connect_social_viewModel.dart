import 'package:athlink/screens/bottom_nav/bottomnav_view/bottomnav_view.dart';
import 'package:athlink/screens/prompts%20_list/prompts_view/prompts_view.dart';
import 'package:athlink/screens/selectintrerest/selectinterest_view/selectinterest_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectSocialViewModel extends GetxController {
  final prompt = TextEditingController();
  bool loading = false;
  bool isConect = false;
  bool isConect1 = true;
  bool isConect2 = true;

  final formKey = GlobalKey<FormState>();
  void toPromptsList() {
    if (formKey.currentState!.validate()) {
      Get.to(() => const PromptsListView());
    }
  }

  void togle() {
    isConect = !isConect;
    update();
  }

  void togle1() {
    isConect1 = !isConect1;
    update();
  }

  void togle2() {
    isConect2 = !isConect2;
    update();
  }

  void skipButton() {
    Get.to(() => const BottomnavView());
  }

  void toContinue() {
    Get.to(() => const SelectInterestView());
  }
}
