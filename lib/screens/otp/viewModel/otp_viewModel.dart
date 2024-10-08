import 'dart:convert';

import 'package:athlink/Api/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OTPViewModel extends GetxController {
  final emailController = TextEditingController();

  bool loading = false;
  get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();



  Future<void> VerifyOTP(otp) async {
    try {
      // Make the POST request
      final http.Response response = await http.post(
        Uri.parse(API.baseUrl + API.verifyOtpUrl),
        headers: {
          "Content-Type": "application/json",
          "Accept": "*/*",
        },
        body: jsonEncode(otp),
      );
      print(response.body);
      // Check the response status
      if (response.statusCode == 200) {
        print('Request successful');
        print('Response body: ${response.body}');
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions
      print('An error occurred: $e');
    }
  }
}
