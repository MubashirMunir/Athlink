import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/module/onboarding_module/module.dart';
import 'package:athlink/screens/onbaording_screen/viewmodel/onbaording_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingViewModel>(
        builder: (ctrl) => Scaffold(
              body: PageView.builder(
                  onPageChanged: (index) => ctrl.currentIndex = index,
                  controller: ctrl.controller,
                  itemCount: screens.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          screens[index].image,
                        ))),
                        height: MediaQuery.of(context).size.height,
                        width: 500,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          screens[index].text,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 500, left: 20, right: 20),
                        child: Text(
                          screens[index].desc,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]);
                  }),
              bottomSheet: PrimaryBTN(
                callback: () {
                  ctrl.getStarted(screens, ctrl.currentIndex);
                },
                color: Colors.redAccent,
                title: 'Next',
                width: 300,
              ),
            ));
  }
}
