import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/login/viewModel/login_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Common/FormFIelds/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(
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
                    const Padding(
                      padding: EdgeInsets.only(right: 120.0, top: 10),
                      child: Text(
                        'Welcome to Athlink',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 100.0),
                      child: Text(
                        'Please your details to proceed',
                        style: TextStyle(color: Colors.black26),
                      ),
                    ),
                    Form(
                      key: ctrl.formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(children: [
                          CustomTextField(
                            type: TextInputType.emailAddress,
                            obsecure: false,
                            click: () {},
                            controller: ctrl.emailController,
                            validateError: 'enter valid email',
                            hintText: 'Enter Your Email',
                            iconClik: () {},
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            iconClik: () {
                              ctrl.obSecure();
                              ctrl.update();
                            },
                            type: TextInputType.number,
                            icon: ctrl.isObSecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            obsecure: ctrl.isObSecure,
                            click: () {
                              ctrl.obSecure();
                              ctrl.update();
                            },
                            controller: ctrl.passwordController,
                            validateError: 'enter valid password',
                            hintText: 'Enter Password',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: TextButton(
                              onPressed: () {
                                ctrl.navigateToForgetPassword();
                              },
                              child: const Text("Forget password?"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PrimaryBTN(
                            // color: Colors.green,
                            // loading: ctrl.loading,
                            callback: () {
                              if (ctrl.formKey.currentState!.validate()) {
                                ctrl.login();
                              }
                            },
                            title: 'Login', width: 400,
                            color: Colors.redAccent,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PrimaryBTN(
                            // color: Colors.green,
                            // loading: ctrl.loading,
                            callback: () {
                              ctrl.signup();
                            },
                            title: 'Create account', width: 300,
                            textCLR: Colors.black,
                            color: Colors.white,
                          ),
                          Image.asset('assets/logo/group2.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            // color: Colors.green,
                            // loading: ctrl.loading,
                            onPressed: () {
                              print('sign with google');
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/logo/google.png',
                                    cacheHeight: 14,
                                  ),
                                  const SizedBox(
                                    width: 75,
                                  ),
                                  const Text('Sign with Google')
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            // color: Colors.green,
                            // loading: ctrl.loading,
                            onPressed: () {
                              print('sign with facebook');
                            },
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 65,
                                  ),
                                  Text('Sign with facebook')
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            // color: Colors.green,
                            // loading: ctrl.loading,
                            onPressed: () {
                              print('apple');
                            },
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.apple),
                                  SizedBox(
                                    width: 65,
                                  ),
                                  Text('Sign with AppleID')
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
