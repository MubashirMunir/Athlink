import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/module/drawermodel/drawer_model.dart';
import 'package:athlink/screens/account/view/account_view.dart';
import 'package:athlink/screens/detailedit/detailedite_view/detailedietview.dart';
import 'package:athlink/screens/drawer/drawer_viewModel/drawer_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return GetBuilder<DrawerWidgetModel>(
        builder: (ctrl) => Scaffold(
            appBar: AppBar(
              title: const Text('Settings & privacy'),
            ),
            body: Drawer(
              width: mq.width,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            Get.to(() => const DetailEditView());
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[0].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            Get.to(() => const AccountView());
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[1].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          trailing: Switch(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            splashRadius: 1,
                            onChanged: (value) {
                              ctrl.isSwitch = value;
                              ctrl.update();
                            },
                            value: ctrl.isSwitch,
                          ),
                          title: Text(drawerModel[2].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            ctrl.toSubs();
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[3].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            ctrl.toevent();
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[4].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            ctrl.toLang();
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[5].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            ctrl.toprivacy();
                          },
                          trailing: drawerModel[0].icon,
                          title: Text(drawerModel[6].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            ctrl.toTerms();
                          },
                          title: Text(drawerModel[7].text),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white),
                        child: ListTile(
                          onTap: () {
                            AlertDialog alert = AlertDialog(
                              title: const Text("Log Out"),
                              content: const Text(
                                  "Are you sure you want to log out"),
                              actions: [
                                PrimaryBTN(
                                    callback: () {},
                                    color: Colors.red,
                                    title: 'No',
                                    width: 300),
                                const SizedBox(
                                  height: 10,
                                ),
                                PrimaryBTN(
                                    callback: () {},
                                    color: Colors.black12,
                                    title: 'Yes',
                                    width: 300),
                              ],
                            );

                            // show the dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          },
                          title: Text(
                            drawerModel[8].text,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ]),
              ),
            )));
  }
}
