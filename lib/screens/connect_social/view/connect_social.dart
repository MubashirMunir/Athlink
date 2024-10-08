import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/connect_social/viewModel/connect_social_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectSocialView extends StatelessWidget {
  const ConnectSocialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConnectSocialViewModel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                actions: [
                  TextButton(
                      onPressed: () {
                        ctrl.skipButton();
                      },
                      child: const Text('Skip'))
                ],
              ),
              backgroundColor: Colors.white,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 70.0),
                    child: Text(
                      "Connect Social Accounts",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black12)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        TextButton(
                            onPressed: () {
                              ctrl.togle();
                            },
                            child: ctrl.isConect
                                ? const Text('Connect',
                                    style: TextStyle(color: Colors.black26))
                                : const Text('Connected',
                                    style: TextStyle(color: Colors.red)))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black12)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/logo/Instagram.png',
                          height: 18,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Instagram',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        TextButton(
                            onPressed: () {
                              ctrl.togle1();
                            },
                            child: ctrl.isConect1
                                ? const Text('Connect',
                                    style: TextStyle(color: Colors.black26))
                                : const Text('Connected',
                                    style: TextStyle(color: Colors.red)))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black12)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/logo/Spotify.png',
                          height: 18,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Spotify',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        TextButton(
                            onPressed: () {
                              ctrl.togle2();
                            },
                            child: ctrl.isConect2
                                ? const Text('Connect',
                                    style: TextStyle(color: Colors.black26))
                                : const Text('Connected',
                                    style: TextStyle(color: Colors.red)))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: PrimaryBTN(
                      callback: () {
                        ctrl.toContinue();
                      },
                      color: Colors.red,
                      title: 'Continue',
                      width: 320,
                    ),
                  ),
                ],
              ),
            ));
  }
}
