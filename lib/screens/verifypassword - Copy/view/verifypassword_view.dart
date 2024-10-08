import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/verifypassword/verifyPassword_viewModel/verifypassword_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class VerifyPassword extends StatelessWidget {
  VerifyPassword({Key? key, required this.email}) : super(key: key);
  String email;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyPasswordModel1>(
        builder: (ctrl) => Scaffold(
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
                      padding: EdgeInsets.only(right: 160.0),
                      child: Text(
                        "Verify password",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30.0, left: 20, top: 0, bottom: 0),
                      child: Text(
                        "Verify your account by entering verification code we sent to $email",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: PrimaryBTN(
                        callback: () => Get.to(ctrl.ToResetPas),
                        color: Colors.red,
                        title: 'Confirm',
                        width: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: PrimaryBTN(
                        callback: () {},
                        color: Colors.black12,
                        title: 'Resend',
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
