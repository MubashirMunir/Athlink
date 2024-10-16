import 'package:athlink/screens/resetpasword/viewModel/resetpasword_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:athlink/Common/AppBTN/primary_btn.dart';
import '../../../Common/FormFIelds/custom_text_field.dart';

class ResetPasword extends StatelessWidget {
  const ResetPasword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPaswordViewmodel>(
        builder: (ctrl) => Scaffold(
              backgroundColor: Colors.white,
              // appBar: AppBar(
              //   centerTitle: true,
              //   // title:  const AppbarText(text: 'Sign in',)
              // ),
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
                      padding: EdgeInsets.only(
                        right: 175.0,
                      ),
                      child: Text(
                        'Reset password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 76.0),
                      child: Text(
                        'Enter your new password and confirm',
                        style: TextStyle(color: Colors.black26),
                      ),
                    ),
                    Form(
                      key: ctrl.formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            CustomTextField(
                              type: TextInputType.emailAddress,
                              obsecure: false,
                              click: () {},
                              controller: ctrl.emailController,
                              validateError: 'enter valid email',
                              hintText: 'Enter new passsword',
                              iconClik: () {},
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextField(
                              iconClik: () {
                                ctrl.obSecure();
                                ctrl.update();
                              },
                              type: TextInputType.number,
                              obsecure: false,
                              click: () {
                                ctrl.obSecure();
                                ctrl.update();
                              },
                              controller: ctrl.passwordController,
                              validateError: 'enter valid password',
                              hintText: 'Enter confrim Password',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            PrimaryBTN(
                              // color: Colors.green,
                              // loading: ctrl.loading,
                              callback: () {
                                ctrl.tousername();
                              },
                              title: 'Confirm', width: 300,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
