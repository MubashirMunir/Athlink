import 'package:get/get.dart';

import '../../eventfirstscreen/view/evetfirstscreen.dart';

class EventViewModel extends GetxController {
  void toEvents() {
    Get.to(const EventFirstScreen());
  }
}
