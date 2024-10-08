import 'dart:convert';

import 'package:athlink/Api/api.dart';
import 'package:athlink/screens/location/view/location_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsernameViewmodel extends GetxController {
  final username = TextEditingController();

  bool loading = false;

  final formKey = GlobalKey<FormState>();
  void toLocation() {
    if (formKey.currentState!.validate()) {
      Get.to(() => const LocationView());
    }
  }

  Future<void> createUsername() async {
    try {
      final response = await http.post(Uri.parse(API.baseUrl + API.username),
          headers: {
            "Content-Type": "application/json",
            // "Accept": "*/*",
          },
          body: jsonEncode(username.text.toString()));
      print(response.body);
      // Check the response status
      if (response.statusCode == 200) {
        toLocation();

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
}
