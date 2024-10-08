import 'package:athlink/Constant/custom_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ViewModel/splash_view_model.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);
  // final splashVM = Get.find<SplashViewModel>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashViewModel>(
        builder: (ctrl) => Scaffold(
              // backgroundColor: AppColor.secondaryColor,
              body: Center(
                  child: Image.asset(
                CustomAssets.logo,
                fit: BoxFit.fill,
              )),
            ));
  }
}
