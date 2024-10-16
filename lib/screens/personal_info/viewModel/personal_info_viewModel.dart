import 'dart:convert';
import 'package:athlink/Api/api.dart';
import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PersonalInfoViewModel extends GetxController {
  @override
  void onInit() {
    getToken();
    super.onInit();
  }

  final formKey = GlobalKey<FormState>();
  final postalcode = TextEditingController();
  final location = TextEditingController();
  final bio = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();
  final emailcontroller = TextEditingController();
  final pascontroller = TextEditingController();
  final phoneNumber = TextEditingController();
  final dateController = TextEditingController();

  BuildContext? context = Get.context;
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

  var token;
  Future<void> getToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    token = sp.getString('token');
  }

  Future<void> createPost() async {
    try {
      var response = await http.post(
        Uri.parse(API.baseUrl + API.personal),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'phone_number': phoneNumber.text.toString(),
          'language': 'English',
          "date_of_birth": "1990-05-15",
          'gender': 'male',
          'bio': bio.text.toString(),
          'postal_code': postalcode.text.toString(),
          'city': city.text.toString(),
          'country': country.text.toString(),
          'location': location.text.toString(),
        }),
      );
      // Check the response status
      if (response.statusCode == 200) {
        Get.toNamed(AppRoutes.PromptsView);
        // Handle successful response
        print('Post created successfully');
        // Navigate or show success message if needed
      } else {
        // Handle failure response
        // Get.toNamed(AppRoutes.PromptsView);
        print('Request failed with status: ${response.body}');

        Get.snackbar('Error', 'Failed to create post: ${response.body}');
      }
    } catch (e) {
      // Handle any exceptions
      ScaffoldMessenger.of(context!).showSnackBar(
        SnackBar(content: Text('Request failed: $e')),
      );
      print('An error occurred: $e');
    }
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

  Future<void> date(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      // Format the date as needed, e.g., 'yyyy-MM-dd'
      String formattedDate =
          "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      dateController.text = formattedDate;
    }
  }
}
