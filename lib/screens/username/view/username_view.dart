import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/Common/FormFIelds/custom_text_field.dart';
import 'package:athlink/screens/username/viewModel/username_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsernameView extends StatelessWidget {
  const UsernameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsernameViewmodel>(
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
                      padding: EdgeInsets.only(right: 135.0),
                      child: Text(
                        "choose username",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 0, top: 0, bottom: 0, right: 100),
                      child: Text(
                        "Enter a unique username",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Form(
                        key: ctrl.formKey,
                        child: CustomTextField(
                          obsecure: false,
                          click: () {},
                          controller: ctrl.username,
                          validateError: 'enter valid username',
                          type: TextInputType.name,
                          hintText: 'Enter username',
                          iconClik: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: PrimaryBTN(
                        callback: () {
                          ctrl.createUsername();
                        },
                        color: Colors.red,
                        title: 'Confirm',
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
