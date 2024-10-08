import 'package:athlink/screens/resetpasword/resetpasword_view/resetpasword_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyPasswordModel extends GetxController {
  final emailController = TextEditingController();

  bool loading = false;
  get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();

  // void sendResetEmail() {
  //   auth.sendPasswordResetEmail(email: emailController.text).then((value) {
  //     _navigationService.navigateTo(Routes.verifyScreenView,);
  //     utils().toast('reset code sent');
  //     loading = false;
  //   }).onError({
  //   loading = false,
  //     utils().toast("an error accured"),
  //   });
  // }

  // Future<void> uploadDataToFirebase() async{
  //   for(int i=0;i<itemsData.length;i++){
  //     await FirebaseFirestore.instance.collection('food_item').add(itemsData[i].toJson());
  //   }
  // }
  ToResetPas() {
    Get.to(const ResetPasword());
  }
}
