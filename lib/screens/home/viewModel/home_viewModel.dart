import 'package:get/get_state_manager/get_state_manager.dart';

class HomeViewmodel extends GetxController {
  bool fav = false;
  bool fav1 = false;
  bool fav2 = false;
  bool fav3 = false;

  void tog() {
    fav = !fav;
    update();
  }

  bool filter = false;
  void tap() {
    filter = !filter;
    update();
  }
}
