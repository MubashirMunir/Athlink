import 'package:athlink/screens/drawer/drawer_view/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../../leader/viewModel/leader_view.dart';

class ProfileViewmodel extends GetxController
    with SingleGetTickerProviderMixin {
  TabController? tc;
  @override
  void onInit() {
    tc = TabController(length: 2, vsync: this);
    super.onInit();
  }

  bool fav = false;

  void tog() {
    fav = !fav;
    update();
  }

  void toLeader() {
    Get.to(const LeaderView());
  }

  void toDrawer(context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.leftToRight, child: const DrawerWidget()));
  }

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      isSwitched = true;
      textValue = 'Switch Button is ON';
      update();

      print('Switch Button is ON');
    } else {
      isSwitched = false;
      textValue = 'Switch Button is OFF';
      update();
      print('Switch Button is OFF');
    }
  }
}
