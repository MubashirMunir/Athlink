import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/Utils/loader.dart';
import 'package:athlink/screens/privacypolicy/privacypolicy_view/privacypolicy_view.dart';
import 'package:athlink/screens/signup/signup_viewModel/sign_up_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Common/FormFIelds/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpViewModel>(
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
                    height: 50,
                  ),
                  Image.asset('assets/logo/group1.jpg'),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 150.0,
                    ),
                    child: Text(
                      'Create Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 0.0, right: 65),
                    child: Text(
                      'Please enter your details to proceed',
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                  Form(
                    key: ctrl.formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        CustomTextField(
                          obsecure: false,
                          click: () {},
                          controller: ctrl.username,
                          validateError: 'enter valid name',
                          type: TextInputType.name,
                          hintText: 'Enter username',
                          iconClik: () {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          obsecure: false,
                          click: () {},
                          controller: ctrl.emailController,
                          validateError: 'enter valid email',
                          type: TextInputType.emailAddress,
                          hintText: 'Enter Email',
                          iconClik: () {},
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          icon: ctrl.isObSecure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          obsecure: ctrl.isObSecure,
                          click: () {},
                          controller: ctrl.passwordController,
                          validateError: 'enter valid password',
                          type: TextInputType.phone,
                          lengthError: 'should be > 5 char',
                          hintText: 'Enter Password',
                          iconClik: () {
                            ctrl.obSecure();
                            ctrl.update();
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            obscureText: ctrl.isObSecure2,
                            key: key,
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                            controller: ctrl.confirmpassword,
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: const BorderSide(
                                    color: Color(0x1F3F91B3),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: const BorderSide(
                                    color: Color(0x1F3F91B3),
                                  )),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  ctrl.obSecure2();
                                },
                                icon: Icon(
                                  ctrl.isObSecure2
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  size: 15,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(
                                      0x1F3F91B3), // Same visible color for focused error
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: const BorderSide(
                                    color: Color(0x1F3F91B3),
                                  )),
                              hintText: 'enter confirm password',
                              hintStyle: const TextStyle(
                                  fontSize: 14, color: Colors.black26),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'enter validate pas';
                              } else if (value.length < 6) {
                                return 'shuild be >6';
                              } else if (value !=
                                  ctrl.passwordController.text.toString()) {
                                return 'password not match';
                              }
                              ctrl.update();
                              return null;
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: Colors.red,
                        //       borderRadius: BorderRadius.circular(10)),
                        //   width: 300,
                        //   child: TextButton(
                        //       onPressed: () {
                        //         ctrl.loader();
                        //         ctrl.createAccountAPI();
                        //       },
                        //       child: ctrl.loading
                        //           ? CircularProgressIndicator(
                        //               color: Colors.white,
                        //             )
                        //           : Text(
                        //               'Register',
                        //               style: TextStyle(color: Colors.white),
                        //             )),
                        // ),
                        PrimaryBTN(
                          callback: () {
                            if (ctrl.formKey.currentState!.validate()) {
                              ctrl.createAccountAPI();
                            }
                          },
                          title: 'Register',
                          width: 400,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('assets/logo/group2.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            print('google');
                            ctrl.signInWithGoogle();
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
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
                          onPressed: () {},
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
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
                          onPressed: () {},
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 40, right: 50),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          const Text(
                            'After register you agree to our',
                            style: TextStyle(color: Colors.black26),
                          ),
                          TextButton(
                              onPressed: () {
                                ctrl.toTerms();
                              },
                              child: const Text(
                                'terms & conditions',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              )),
                        ]), // Row(
                        //   children: [
                        //     const Text(
                        //       ' and',
                        //       style: TextStyle(color: Colors.black26),
                        //     ),
                        //     TextButton(
                        //         onPressed: () {},
                        //         child: const Text(
                        //           'privacy policy',
                        //           style: TextStyle(
                        //               color: Colors.black, fontSize: 13),
                        //         )),
                        //   ],
                        // )
                        TextButton(
                            onPressed: () {
                              Get.to(const PrivacyPolicyView());
                            },
                            child: const Text(
                              'privacy policy',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
            ));
  }
}
