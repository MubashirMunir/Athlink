import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/screens/location/viewModel/locaton_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationViewModel>(
        builder: (ctrl) => Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Image.asset('assets/logo/group1.jpg'),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/logo/group3.jpg',
                    scale: 1,
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  const CustomText(title: 'Location'),
                  const Spacer(),
                  Center(
                    child: PrimaryBTN(
                      callback: () {
                        ctrl.determinePosition();
                        ctrl.toPinfo();
                      },
                      color: Colors.redAccent,
                      title: 'Enable',
                      width: 300,
                    ),
                  ),
                ],
              ),
            ));
  }
}
