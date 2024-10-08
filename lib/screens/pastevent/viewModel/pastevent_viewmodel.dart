import 'package:athlink/screens/eventfirstscreen/view/evetfirstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasteventViewmodel extends GetxController
    with SingleGetTickerProviderMixin {
  TabController? tc;
  bool chek = false;
  bool chek1 = false;
  bool chek2 = false;
  bool chek3 = false;
  @override
  void onInit() {
    tc = TabController(length: 2, vsync: this);
    super.onInit();
  }

  void isBook() {
    chek = !chek;
    update();
  }

  void isBook1() {
    chek1 = !chek1;
    update();
  }

  void isBook2() {
    chek2 = !chek2;
    update();
  }

  void isBook3() {
    chek3 = !chek3;
    update();
  }

  void toEvents() {
    Get.to(const EventFirstScreen());
  }
}
