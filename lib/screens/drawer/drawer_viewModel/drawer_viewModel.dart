import 'package:athlink/screens/event/view/eventview.dart';
import 'package:athlink/screens/language/view/language_view.dart';
import 'package:athlink/screens/privacypolicy/privacypolicy_view/privacypolicy_view.dart';
import 'package:athlink/screens/subscription/subscription_view/subscription_view.dart';
import 'package:athlink/screens/terms_of_service/terms_of_service_view/terms_of_service_view.dart';
import 'package:get/get.dart';

class DrawerWidgetModel extends GetxController {
  bool isSwitch = true;
  void toTerms() {
    Get.to(const TermsOfServiceView());
  }

  void toLang() {
    Get.to(() => const LanguageView());
  }

  void toSubs() {
    Get.to(() => const SubscriptionView());
  }

  void toevent() {
    Get.to(() => const EventView());
  }

  void toprivacy() {
    Get.to(() => const PrivacyPolicyView());
  }
}
