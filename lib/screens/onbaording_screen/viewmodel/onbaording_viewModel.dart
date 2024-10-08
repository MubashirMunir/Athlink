import 'package:athlink/Routes/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingViewModel extends GetxController {
  final controller = PageController();
  var currentIndex = 0;

  void getStarted(screens, index) {
    if (index == screens.length - 1) {
      toSignup();
    }
    controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void toSignup() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool("chek", false);

    Get.offAndToNamed(AppRoutes.LoginView);
  }
}
