import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/module/selectinterest_model/selectinterest.dart';
import 'package:athlink/screens/selectintrerest/viewModel/selectinterest_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectInterestView extends StatelessWidget {
  const SelectInterestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectinterestViewmodel>(builder: (ctrl) {
      var mq = MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const SizedBox(height: 80),
          const Padding(
            padding: EdgeInsets.only(right: 150.0, top: 20),
            child: Text(
              'Select Intreset',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0.0, right: 65),
            child: Text(
              'Please enter your details to proceed',
              style: TextStyle(color: Colors.black26),
            ),
          ),
          Form(
            key: ctrl.formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkWell(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              ctrl.open();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Text(
                                  ctrl.selectedValue,
                                )),
                                Icon(
                                  ctrl.isExpanded
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  color: ctrl.isExpanded
                                      ? Colors.red
                                      : Colors.blue,
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                  if (ctrl.isExpanded)
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: ctrl.lang
                          .map((e) => InkWell(
                                onTap: () {
                                  ctrl.open();
                                  ctrl.selectedValue = e;
                                },
                                child: SizedBox(
                                    height: 35,
                                    width: double.infinity,
                                    child: Center(
                                        child: Text(
                                      e.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge!
                                          .copyWith(
                                              fontSize: 14,
                                              color: ctrl.selectedValue == e
                                                  ? Colors.black
                                                  : Colors.blue),
                                    ))),
                              ))
                          .toList(),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: InkWell(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    ctrl.open1();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: Text(
                                        ctrl.selectedValue1,
                                      )),
                                      Icon(
                                        ctrl.isOpen
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                        color: ctrl.isOpen
                                            ? Colors.red
                                            : Colors.blue,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        if (ctrl.isOpen)
                          ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: ctrl.gender
                                .map((e) => InkWell(
                                      onTap: () {
                                        ctrl.open1();
                                        ctrl.selectedValue1 = e;
                                      },
                                      child: SizedBox(
                                          height: 35,
                                          width: double.infinity,
                                          child: Center(
                                              child: Text(
                                            e.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineLarge!
                                                .copyWith(
                                                    fontSize: 14,
                                                    color:
                                                        ctrl.selectedValue1 == e
                                                            ? Colors.black
                                                            : Colors.blue),
                                          ))),
                                    ))
                                .toList(),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PrimaryBTN(
                    callback: () {
                      if (ctrl.selectedValue != 'Select Sport' &&
                          ctrl.selectedValue1 != 'Select Experience') {
                        ctrl.interestmodel.add(SelectInterest(
                          title: ctrl.selectedValue,
                          subtitle: ctrl.selectedValue1,
                        ));
                        ctrl.addinterest(
                            ctrl.selectedValue, ctrl.selectedValue1);
                      }
                    },
                    title: 'Add',
                    width: 330,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    height: 410,
                    child: ListView.builder(
                        itemCount: ctrl.interestmodel.length,
                        itemBuilder: (context, index) {
                          // ctrl.indexs = index;
                          return ListTile(
                            leading: const Icon(Icons.people),
                            title: Text(
                              ctrl.interestmodel[index].title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              ctrl.interestmodel[index].subtitle,
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  ctrl.interestmodel.removeAt(index);
                                  ctrl.update();
                                },
                                icon: const Icon(
                                  Icons.delete_outlined,
                                  color: Colors.red,
                                )),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ]),
        bottomSheet: PrimaryBTN(
          callback: () {
            ctrl.toPrompts();
          },
          title: 'Next',
          width: mq.width * .90,
          color: Colors.redAccent,
        ),
      );
    });
  }
}
