import 'dart:async';
import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:athlink/Utils/loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VerifyPasswordModel1 extends GetxController {
  BuildContext? context = Get.context;
  final emailController = TextEditingController();
  bool loading = false;
  get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  void ToResetPas() {
    Get.toNamed(AppRoutes.ResetPasword);
  }

  void toUsername(token) {
    Get.toNamed(AppRoutes.UsernameView, arguments: {'token': '$token'});
  }

  // ignore: non_constant_identifier_names
  Future<void> VerifyOTP(token) async {
    try {
      final response =
          await http.post(Uri.parse(API.baseUrl + API.verifyOtpUrl),
              headers: {
                "Content-Type": "application/json",
                "Accept": "*/*",
                'Authorization': 'Bearer $token',
              },
              body: jsonEncode({'otp': controller.text.toString()}));
      print(response.body);

      if (response.statusCode == 200) {
        toUsername(token);
        print('Request successful');
        print(token);
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

  void resendOTP(String token) async {
    if (context == null) return; // Ensure context is not null
    try {
      var response = await http.post(
        Uri.parse(API.baseUrl + API.resendotp),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        },
      );
      showLoadingIndicator(context: context!);
      var data = jsonDecode(response.body);
      var message = data['message'].toString();
      print("Status code: ${response.statusCode}");
      print("Decoded response body: $data");

      if (response.statusCode == 200) {
        hideOpenDialog(context: context!);
        print("Response body: ${response.body}");
        ScaffoldMessenger.of(context!).showSnackBar(
          const SnackBar(content: Text('Request successful')),
        );
      } else {
        hideOpenDialog(context: context!);
        ScaffoldMessenger.of(context!).showSnackBar(
          SnackBar(
              content:
                  Text('Error: ${data['message'] ?? 'Something went wrong'}')),
        );
      }
    } catch (e) {
      hideOpenDialog(context: context!);
      ScaffoldMessenger.of(context!).showSnackBar(
        SnackBar(content: Text('Exception: ${e.toString()}')),
      );
    }
  }
}
