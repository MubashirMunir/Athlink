import 'package:athlink/screens/prompts/prompts_view/prompts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInfoViewModel extends GetxController {
  final _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  final postalcode = TextEditingController();
  final location = TextEditingController();
  final bio = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();

  bool isObSecure = true;
  bool isObSecure2 = true;
  bool loading = false;
  void loadingTrue() {
    update();
    loading = true;
  }

  // bool get isObsecure => isObSecure;
  bool isExpanded = false;
  String selectedValue = 'Select option';
  String selectedValue1 = 'Select Gender';

  //list that will be expanded
  List<String> lang = ['English', 'Urdu', 'Turkish', 'Indian', 'Urdan'];
  List<String> gender = ['Male', 'Female', 'Custom', 'Not Specified'];

  void loadingFalse() {
    update();
    loading = false;
  }

  // Future<http.Response> createPost({var headers, body}) async {
  //   return await http.post(Uri.parse('http://127.0.0.1:8000/api/register/'),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode({
  //         'first_name': '',
  //         'last_name': '',
  //         'username': username.toString(),
  //         'email': emailController.toString(),
  //         'password': passwordController.toString()
  //       }));
  // }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "enter email address";
    } else {}
    return null;
  }

  String? passwordValidation(String? text) {
    if (text!.isEmpty) {
      return "Enter Password";
    } else {
      return null;
    }
  }

  void obSecure() {
    print("object11");
    isObSecure = !isObSecure;
    update();
  }

  void toPrompts() {
    Get.to(const PromptsView());
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

  Rx<DateTime> dateTime = DateTime.now().obs;

  void date(context) {
    showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return 'choose date';
      } else {
        dateTime.value = pickedDate;
        update();
      }
    });
  }
}
