import 'package:athlink/module/selectinterest_model/selectinterest.dart';
import 'package:athlink/screens/prompts/prompts_view/prompts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectinterestViewmodel extends GetxController {
  final _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  get formKey1 => _formKey;
  get formKey2 => _formKey;
  bool isObSecure = true;
  bool isObSecure2 = true;
  bool loading = false;
  void loadingTrue() {
    update();
    loading = true;
  }

  List<SelectInterest> interestmodel = [];
  int indexs = 0;

  bool isAdd = false;
  List<String> listsports = [];
  List<String> listexp = [];
  // bool get isObsecure => isObSecure;
  bool isExpanded = false;
  String selectedValue = 'Select Sport';
  String selectedValue1 = 'Select Experience';

  //list that will be expanded
  List<String> lang = ['Cricket', 'Hockey', 'Polo', 'Footbal'];
  List<String> gender = ['Intermediet', 'Expert', 'Beginner'];

  void loadingFalse() {
    update();
    loading = false;
  }

  void obSecure() {
    print("object11");
    isObSecure = !isObSecure;
    update();
  }

  void obSecure2() {
    print("object");
    isObSecure2 = !isObSecure2;
    update();
  }

  void toPrompts() {
    Get.to(const PromptsView());
    update();
  }

  String selected = 'Select Lang';
  bool isOpen = false;
  void open() {
    isExpanded = !isExpanded;
    update();
  }

  void open1() {
    isOpen = !isOpen;
    update();
  }

  void Add() {
    isAdd = !isAdd;
    update();
  }

  Rx<DateTime> dateTime = DateTime.now().obs;
  int count = 0;
  void val() {
    if (count < 3) {
      count++;
    } else {
      count--;
    }
  }
}
