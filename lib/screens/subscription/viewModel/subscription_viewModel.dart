import 'package:athlink/screens/subscripted/subscripted_view/subscripted_view.dart';
import 'package:get/get.dart';

class SubscriptionViewmodel extends GetxController {
  bool red = false;
  bool red0 = false;
  void chang() {
    red = !red;
    red0 = false;
    update();
  }

  void chang0() {
    red0 = !red0;
    red = false;

    update();
  }

  void topremium() {
    if (red || red0) {
      Get.to(() => const SubscriptedView());
    }
  }
}
