import 'package:athlink/screens/chat/view/chat_view.dart';
import 'package:athlink/screens/events/view/events_view.dart';
import 'package:athlink/screens/home/view/home_view.dart';
import 'package:athlink/screens/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomnavViewmodel extends GetxController {
  int selectedIndex = 0;
  List<Widget> widgets = <Widget>[
    const HomeView(),
    const ChatView(),
    const EventView(),
    const ProfileView()
  ];

  void iconTap(int index) {
    selectedIndex = index;
    update();
  }
}
