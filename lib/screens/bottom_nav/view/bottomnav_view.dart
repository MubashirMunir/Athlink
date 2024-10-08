import 'package:athlink/screens/bottom_nav/bottomnav_viewModel/bottomnav_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomnavView extends StatelessWidget {
  const BottomnavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomnavViewmodel>(
        builder: (ctrl) => Scaffold(
              body: Center(child: ctrl.widgets.elementAt(ctrl.selectedIndex)),
              bottomNavigationBar: BottomNavigationBar(
                  mouseCursor: MouseCursor.defer,
                  backgroundColor: Colors.white,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/logo/Vector.png',
                        height: 19,
                      ),
                      icon: Image.asset(
                        'assets/logo/Vector.png',
                        color: Colors.black,
                        height: 19,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/logo/heartfil.png',
                        height: 19,
                      ),
                      icon: Image.asset(
                        'assets/logo/heart.png',
                        height: 19,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/logo/Calendar.png',
                        height: 19,
                      ),
                      icon: Image.asset(
                        'assets/logo/Event.png',
                        height: 19,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: Image.asset(
                        'assets/logo/Profilefil.png',
                        height: 19,
                      ),
                      icon: Image.asset(
                        'assets/logo/Profile.png',
                        height: 19,
                      ),
                      label: '',
                    ),
                  ],
                  type: BottomNavigationBarType.fixed,
                  currentIndex: ctrl.selectedIndex,
                  // selectedItemColor: Colors.black,
                  iconSize: 20,
                  elevation: 0,
                  onTap: ctrl.iconTap),
            ));
  }
}
