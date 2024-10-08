import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/module/Monthly_subcription/subcription.dart';
import 'package:athlink/screens/subscription/subsciption_viewModel/subscription_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GetBuilder<SubscriptionViewmodel>(
        builder: (ctrl) => Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFF132945),
              title: const Text(
                'Subscription',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      color: const Color(0xFF132945),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/logo/logot.png',
                          height: 50,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 142.0, left: 30, right: 30),
                      child: Divider(
                        thickness: 8,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    ctrl.chang();
                  },
                  child: Container(
                    height: mq.height * .30,
                    width: mq.width * .90,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.black12),
                        borderRadius: BorderRadius.circular(15),
                        color: ctrl.red ? Colors.red : Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                subcription[0].day,
                                style: TextStyle(
                                    color: ctrl.red ? Colors.white : Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${subcription[0].price.toString()}\$\\m',
                                style: TextStyle(
                                    color: ctrl.red ? Colors.white : Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              subcription[0].subsciption,
                              style: TextStyle(
                                  color: ctrl.red ? Colors.white : Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ctrl.red
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:
                                        ctrl.red ? Colors.white : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:
                                        ctrl.red ? Colors.white : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    ctrl.chang0();
                  },
                  child: Container(
                    height: mq.height * .30,
                    width: mq.width * .90,
                    decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.black12),
                        borderRadius: BorderRadius.circular(15),
                        color: ctrl.red0 ? Colors.red : Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                subcription[1].day,
                                style: TextStyle(
                                    color:
                                        ctrl.red0 ? Colors.white : Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${subcription[1].price.toString()}\$\\m',
                                style: TextStyle(
                                    color:
                                        ctrl.red0 ? Colors.white : Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              subcription[0].subsciption,
                              style: TextStyle(
                                  color:
                                      ctrl.red0 ? Colors.white : Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ctrl.red0
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:
                                        ctrl.red0 ? Colors.white : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  subcription[0].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:
                                        ctrl.red0 ? Colors.white : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomSheet: PrimaryBTN(
                callback: () {
                  ctrl.topremium();
                },
                color: ctrl.red || ctrl.red0 ? Colors.red : Colors.grey,
                title: 'Get Premium ',
                width: 340)));
  }
}
