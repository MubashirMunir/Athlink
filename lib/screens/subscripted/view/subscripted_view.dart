import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptedView extends StatelessWidget {
  const SubscriptedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(child: Image.asset('assets/logo/group1.jpg')),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset(
            'assets/logo/Frame.png',
            height: 250,
          )),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 10.0,
              top: 30,
            ),
            child: Text(
              'Thanks for purchasing our premium subscription',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 10.0,
              top: 30,
            ),
            child: Text(
              'Thanks for purchasing our premium subscription',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Spacer(),
          PrimaryBTN(
              callback: () {
                Get.to(() => const HomeView());
              },
              color: Colors.red,
              title: 'Go To Home',
              width: 300)
        ],
      ),
    );
  }
}
