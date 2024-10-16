import 'dart:async';
import 'package:athlink/Routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewModel extends GetxController {
  bool FT = true;
  Timer? timer;
  @override
  void onInit() {
    onboardInfo();
    super.onInit();
  }

  Future<void> onboardInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    FT = prefs.getBool("chek") ?? true;
    print('chek: $FT');

    // Start the timer after initializing the screen information
    timer = Timer(const Duration(seconds: 3), () {
      navigateToNextScreen();
    });
  }

  void navigateToNextScreen() {
    if (FT == true) {
      Get.offNamed(AppRoutes.OnboardingView);
    } else {
      Get.offNamed(AppRoutes.EventFirstScreen);
    }
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer if it's not null
    super.dispose();
  }
}
