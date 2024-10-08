import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/Common/FormFIelds/custom_text_field.dart';
import 'package:athlink/screens/forgetpassword/viewModel/forgetpassword_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetPasswordModel>(
        builder: (ctrl) => Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset('assets/logo/group1.jpg'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 155.0),
                    child: Text(
                      "Forget password",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        right: 30.0, left: 20, top: 0, bottom: 0),
                    child: Text(
                      "Enter your registered email address to get verification code",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        key: ctrl.formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: CustomTextField(
                            controller: ctrl.emailController,
                            type: TextInputType.emailAddress,
                            hintText: "Enter email address",
                            click: () {},
                            obsecure: false,
                            iconClik: () {},
                            validateError: 'enter email',
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: PrimaryBTN(
                      callback: () {
                        ctrl.ToVerifyView();
                      },
                      color: Colors.redAccent,
                      title: 'Send',
                      width: 330,
                    ),
                  ),
                ],
              ),
            ));
  }
}
