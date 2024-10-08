import 'package:athlink/screens/bottom_nav/bottomnav_view/bottomnav_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:athlink/screens/terms_of_service/terms_of_service_view/terms_of_service_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonaldetailsViewmodel extends GetxController {
  final formKey = GlobalKey<FormState>();

  final username = TextEditingController();
  final name = TextEditingController();
  final age = TextEditingController();
  final city = TextEditingController();
  final bio = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  void loadingFalse() {
    update();
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

  void toTerms() {
    Get.to(const TermsOfServiceView());
  }

  void tobottom() {
    Get.to(const BottomnavView());
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

  RxList gender = ['Male', 'Female', 'Custom'].obs;
  RxString lavel = ''.obs;
  RxString imageFile = ''.obs;
  Future<void> imagepicker() async {
    final imageaddress =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imageaddress != null) {
      imageFile.value = imageaddress.path;
    } else {
      null;
    }
    update();
  }
}
