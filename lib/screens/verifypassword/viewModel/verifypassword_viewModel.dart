import 'dart:async';
import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/screens/resetpasword/resetpasword_view/resetpasword_view.dart';
import 'package:athlink/screens/username/username_view/username_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VerifyPasswordModel1 extends GetxController {
  final emailController = TextEditingController();
  bool loading = false;
  get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  //
  void ToResetPas() {
    Get.to(() => const ResetPasword());
  }

  void toUsername() {
    Get.to(() => const UsernameView());
  }

  // ignore: non_constant_identifier_names
  Future<void> VerifyOTP(String otp) async {
    try {
      String jso = jsonEncode({'otp': otp});

      print(jso);
      final response =
          await http.post(Uri.parse(API.baseUrl + API.verifyOtpUrl),
              headers: {
                "Content-Type": "application/json",
                // "Accept": "*/*",
              },
              body: jso);
      print(response.body);
      // Check the response status
      var data = jsonDecode(response.body);
      var token = data['token'];
      if (response.statusCode == 200) {
        toUsername();
        print('Request successful');
        print('Response body: ${response.body}');
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      Get.snackbar('error', e.toString());
      print('An error occurred: $e');
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Rx<int> i = 59.obs;

  void timer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (i.value > 0) {
        i.value--;
        update();
      }
    });
  }

  @override
  void onInit() {
    timer();
    super.onInit();
  }
}
