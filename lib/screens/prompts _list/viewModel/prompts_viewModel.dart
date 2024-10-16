import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsListViewModel extends GetxController {
  final prompt = TextEditingController();

  bool loading = false;

  final formKey = GlobalKey<FormState>();
  void toLocation() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.LocationView);
    }
  }
}
