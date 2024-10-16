import 'dart:convert';

import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:athlink/module/selectinterest_model/selectinterest.dart';
import 'package:athlink/screens/prompts/view/prompts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SelectinterestViewmodel extends GetxController {
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  bool isObSecure = true;
  bool isObSecure2 = true;
  bool loading = false;
  void loadingTrue() {
    update();
    loading = true;
  }

  @override
  void onInit() {
    getToken();
    super.onInit();
  }

  var token;
  Future<void> getToken() async {
    print(token);
    SharedPreferences sp = await SharedPreferences.getInstance();
    token = sp.getString('token');
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
    Get.toNamed(AppRoutes.PromptsView);
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

  Future<void> addinterest(String sport, String level) async {
    try {
      // Create the data map
      final data = {
        'sport': sport,
        'level': level,
      };

      // Send the POST request with the body encoded as JSON
      final response = await http.post(
        Uri.parse(API.baseUrl + API.selectinterest),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(data), // Encode the map to JSON
      );

      if (response.statusCode == 200) {
        print(response.body);
      } else {
        // Handle error response here
        print('Error: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }
}
