import 'package:athlink/screens/location/view/location_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsListViewModel extends GetxController {
  final prompt = TextEditingController();

  bool loading = false;

  final formKey = GlobalKey<FormState>();
  void toLocation() {
    if (formKey.currentState!.validate()) {
      Get.to(() => const LocationView());
    }
  }
}
