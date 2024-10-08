import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageViewmodel extends GetxController {
  TextEditingController controller = TextEditingController();
  List<String> langs = ['English', 'Urdu', 'French'];
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  int a = 1;
  int b = 2;
  int c = 3;

  void click1() {
    tap1 = !tap1;
    tap3 = false;
    tap2 = false;
    update();
  }

  void click2() {
    tap2 = !tap2;
    tap1 = false;
    tap3 = false;
    update();
  }

  void click3() {
    tap3 = !tap3;
    tap1 = false;
    tap2 = false;
    update();
  }
}
