import 'package:athlink/screens/language/viewModel/language_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageViewmodel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                title: const Text('Language'),
              ),
              body: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),

                  Center(
                    child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 17,
                                color: Colors.black12,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: const InputDecoration(
                                      hintText: 'Search language',
                                      border: InputBorder.none),
                                  controller: ctrl.controller,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),

                  //first button

                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      ctrl.click1();
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: ctrl.tap1 ? Colors.red : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ctrl.langs[0],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ctrl.tap1
                                      ? Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.red),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox()
                                ],
                              ))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //second button
                  InkWell(
                    onTap: () {
                      ctrl.click2();
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: ctrl.tap2 ? Colors.red : Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ctrl.langs[1],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ctrl.tap2
                                      ? Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.red),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox()
                                  // SizedBox(
                                  //   width: 1,
                                  // )
                                ],
                              ))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //third button
                  InkWell(
                    onTap: () {
                      ctrl.click3();
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: ctrl.tap3 ? Colors.red : Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    ctrl.langs[2],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ctrl.tap3
                                      ? Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.red),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : const SizedBox()
                                  // SizedBox(
                                  //   width: 1,
                                  // )
                                ],
                              ))),
                    ),
                  )
                ],
              ),
            ));
  }
}
