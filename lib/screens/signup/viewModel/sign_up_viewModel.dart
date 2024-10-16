import 'dart:convert';

import 'package:athlink/Routes/app_routes.dart';
import 'package:athlink/Utils/loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:athlink/Api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignUpViewModel extends GetxController {
  final formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassword = TextEditingController();
  bool isObSecure = true;
  bool isObSecure2 = true;
  BuildContext? context = Get.context;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  var token;
  var getToken;

  void adToken() async {
    print(getToken);
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', token);
    getToken = sp.getString('token');
  }

  Future<void> createAccountAPI() async {
    showLoadingIndicator(context: context!);

    var data = {
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
      "confirm_password": confirmpassword.text.toString(),
      "full_name": username.text.toString(),
    };
    try {
      final http.Response response = await http.post(
        Uri.parse(API.baseUrl + API.registerUrl),
        headers: {
          "Content-Type": "application/json",
          "Accept": "*/*",
        },
        body: jsonEncode(data),
      );
      var responsedata = jsonDecode(response.body);
      token = responsedata['token'];
      if (response.statusCode == 200) {
        hideOpenDialog(context: context!);
        toVerifyAccount();
        update();
        print('Response body: ${response.body}');
      } else {
        hideOpenDialog(context: context!);

        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      hideOpenDialog(context: context!);

      Get.snackbar('error', e.toString());
    }
  }

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
    print("ok bhai");
    isObSecure = !isObSecure;
    update();
  }

  void obSecure2() {
    print("object");
    isObSecure2 = !isObSecure2;
    update();
  }

  void toVerifyAccount() {
    showLoadingIndicator(context: context!);

    if (formKey.currentState!.validate()) {
      Get.toNamed(AppRoutes.VerifyPassword1, arguments: {
        'email': emailController.text.toString(),
        'token': token.toString(),
      });
    } else {
      hideOpenDialog(context: context!);
      Get.snackbar('Warning', 'Something went wrong');
    }
  }

  void toTerms() {
    Get.toNamed(AppRoutes.TermsOfServiceView);
  }

  void tobottom() {
    Get.toNamed(AppRoutes.BottomnavView);
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      tobottom();
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential.user;
    } catch (e) {
      print('Sign in failed: $e');
      return null;
    }
  }
}
