import 'dart:async';

import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/verifypassword/verifyPassword_viewModel/verifypassword_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerifyPassword1 extends StatelessWidget {
  VerifyPassword1({Key? key, required this.email}) : super(key: key);
  String email;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyPasswordModel1>(builder: (ctrl) {
      String codechange = '';
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset('assets/logo/group1.jpg'),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 140.0),
                child: Text(
                  "Verify password",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 10.0, left: 30, top: 0, bottom: 0),
                child: Text(
                  "Verify your account by entering verification code we sent to $email",
                  style: const TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Pinput(
                  showCursor: false,
                  length: 6,
                  controller: ctrl.controller,
                  onCompleted: (value) {
                    print(codechange);
                    codechange = value;
                  },
                  closeKeyboardWhenCompleted: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 40, bottom: 10),
                child: Align(
                  child: Row(
                    children: [
                      ctrl.i.value == 0
                          ? const Text('OTP is sent')
                          : Text('OTP will be resend in ${ctrl.i}'),
                    ],
                  ),
                ),
              ),
              PrimaryBTN(
                callback: () {
                  print(codechange);
                  ctrl.VerifyOTP(codechange);
                },
                color: Colors.red,
                title: 'Confirm',
                width: 320,
              ),
              ctrl.i.value != 0
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: PrimaryBTN(
                        callback: () {},
                        color: Colors.black12,
                        title: 'Resend',
                        width: 320,
                      ),
                    ),
            ],
          ),
        ),
      );
    });
  }
}
