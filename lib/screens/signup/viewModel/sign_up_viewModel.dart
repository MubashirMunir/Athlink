import 'dart:convert';
import 'package:athlink/Routes/app_routes.dart';
import 'package:athlink/screens/bottom_nav/bottomnav_view/bottomnav_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:athlink/Api/api.dart';
import 'package:athlink/screens/terms_of_service/terms_of_service_view/terms_of_service_view.dart';
import 'package:athlink/screens/verifypassword/verifypassword_view/verifypassword_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpViewModel extends GetxController {
  final formKey = GlobalKey<FormState>();

  final username = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassword = TextEditingController();
  bool isObSecure = true;
  bool isObSecure2 = true;
  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> createAccountAPI() async {
    loading == true;
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

      if (response.statusCode == 200) {
        loading = false;
        toVerifyAccount();
        update();
        print('Response body: ${response.body}');
      } else {
        loading == false;
        update();
        print('Request failed with status: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      loading = false;
      update();
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
    if (formKey.currentState!.validate()) {
      Get.to(VerifyPassword1(email: emailController.text));
    } else {
      // Get.snackbar('Warning', 'Something went wrong');
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

  void loader() {
    loading = !loading;
    update();
  }
}
