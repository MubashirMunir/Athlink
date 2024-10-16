import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UsernameViewmodel extends GetxController {
  final username = TextEditingController();
  BuildContext? context = Get.context;
  bool loading = false;

  final formKey = GlobalKey<FormState>();
  void toLocation(token) {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.LocationView, arguments: {'token': token});
    }
  }

  @override
  void onInit() {
    getToken();
    super.onInit();
  }

  var token;
  Future<void> getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    token = sp.getString('token');
  }

  Future<void> createUsername() async {
    print(token);
    try {
      final response = await http.post(Uri.parse(API.baseUrl + API.username),
          headers: {
            "Content-Type": "application/json",
            // "Accept": "*/*",
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode({'username': username.text.toString()}));
      print(response.body);
      // Check the response status
      if (response.statusCode == 200) {
        toLocation(token);

        ScaffoldMessenger.of(context!)
            .showSnackBar(const SnackBar(content: Text('request ok')));
      } else {
        ScaffoldMessenger.of(context!).showSnackBar(
            const SnackBar(content: Text('something went wrong')));
        print('Response body: ${response.body}');
      }
    } catch (e) {
      ScaffoldMessenger.of(context!)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
