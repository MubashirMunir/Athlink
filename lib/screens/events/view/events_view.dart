import 'package:athlink/Theme/colors.dart';
import 'package:athlink/module/events_model/events_model.dart';
import 'package:athlink/module/recomended_model/recomended_model.dart';
import 'package:athlink/screens/events/viewModel/events_viewmodel.dart';
import 'package:athlink/screens/pastevent/view/pastevent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Common/AppText/AppTextView.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return GetBuilder<EventsViewmodel>(
        builder: (ctrl) => SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 5,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 5.0, color: AppColor.red),
                    ),
                    dividerColor: Colors.black12,
                    physics: const ScrollPhysics(),
                    controller: ctrl.tc,
                    tabs: const [
                      Tab(text: 'Upcoming Events'),
                      Tab(text: 'Past Events'),
                    ],
                  ),
                ),
                body: Expanded(
                  child: TabBarView(
                      physics: const ScrollPhysics(),
                      controller: ctrl.tc,
                      children: [
                        SingleChildScrollView(
                          child: Column(children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150),
                              child: Text(
                                eventlist[1].chekout,
                                style: const TextStyle(
                                    fontWeight: FontWeights.bold, fontSize: 20),
                              ),
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: eventlist.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: Container(
                                        height: mq.height * .32,
                                        width: mq.width * .55,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Stack(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 10,
                                                bottom: 10),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: SizedBox(
                                                width: mq.width * .82,
                                                child: Image.network(
                                                  eventlist[0].img,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30, top: 40),
                                              child: Text(
                                                "\$${eventlist[index].price}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 180, left: 14),
                                            child: Column(
                                              children: [
                                                CustomText(
                                                    title: eventlist[index]
                                                        .tournement),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9.0,
                                                    top: 180,
                                                    bottom: 0),
                                                child: Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    const Icon(
                                                      Icons.timelapse_outlined,
                                                      color: Colors.red,
                                                      size: 18,
                                                    ),
                                                    Text(eventlist[index].time),
                                                    const SizedBox(
                                                      width: 40,
                                                    ),
                                                    Image.asset(
                                                      'assets/logo/Calendar.png',
                                                      height: 16,
                                                    ),
                                                    Text(eventlist[index].date),
                                                  ],
                                                )),
                                          ),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0, top: 225),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      color: Colors.red,
                                                      size: 19,
                                                    ),
                                                    Text(eventlist[index]
                                                        .address)
                                                  ],
                                                ),
                                              )),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: IconButton(
                                                  onPressed: () {
                                                    eventlist[index].isFill =
                                                        !eventlist[index]
                                                            .isFill;
                                                    ctrl.update();
                                                  },
                                                  icon: eventlist[index].isFill
                                                      ? const Icon(
                                                          Icons.bookmark)
                                                      : const Icon(Icons
                                                          .bookmark_border))),
                                          //
                                        ])),
                                  );
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 135),
                              child: Text(
                                'Recommended for you',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 100,
                              width: mq.width * .88,
                              child: InkWell(
                                onTap: () {
                                  ctrl.toEvents();
                                },
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      width: 315,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                matchtlist[0].img,
                                                height: 80,
                                              ),
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, right: 125),
                                                child: Text(
                                                  matchtlist[0].match,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, right: 20),
                                                  child: Text(
                                                    '\$${matchtlist[0].price}',
                                                    style: const TextStyle(
                                                        color: Colors.red),
                                                  ))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 35, left: 100),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.timelapse_sharp,
                                                        color: Colors.red,
                                                        size: 18,
                                                      ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(matchtlist[0].time),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Image.asset(
                                                        'assets/logo/Calendar.png',
                                                        height: 17,
                                                      ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(matchtlist[0].date),
                                                    ],
                                                  ))),
                                          const Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 68, right: 198),
                                                  child: Icon(
                                                    Icons.location_on_outlined,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 65, right: 33),
                                                  child: Text(
                                                    matchtlist[0].address,
                                                  ))),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 315,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                matchtlist[1].img,
                                                height: 80,
                                              ),
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, right: 125),
                                                child: Text(
                                                  matchtlist[1].match,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, right: 20),
                                                  child: Text(
                                                    '\$${matchtlist[0].price}',
                                                    style: const TextStyle(
                                                        color: Colors.red),
                                                  ))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 35, left: 100),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.timelapse_sharp,
                                                        color: Colors.red,
                                                        size: 18,
                                                      ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(matchtlist[1].time),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Image.asset(
                                                        'assets/logo/Calendar.png',
                                                        height: 17,
                                                      ),
                                                      const SizedBox(
                                                        width: 6,
                                                      ),
                                                      Text(matchtlist[1].date),
                                                    ],
                                                  ))),
                                          const Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 68, right: 198),
                                                  child: Icon(
                                                    Icons.location_on_outlined,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 65, right: 33),
                                                  child: Text(
                                                    matchtlist[1].address,
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                        ListView.builder(
                            itemCount: matchtlist.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(PastEventView(
                                    date: matchtlist[index].date,
                                    name: matchtlist[index].match,
                                    price: matchtlist[index].price.toString(),
                                    time: matchtlist[index].time,
                                  ));
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  height: mq.height * .13,
                                  width: 315,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.network(
                                            matchtlist[index].img,
                                            height: 80,
                                          ),
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, right: 125),
                                            child: Text(
                                              matchtlist[index].match,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, right: 20),
                                              child: Text(
                                                '\$${matchtlist[index].price}',
                                                style: const TextStyle(
                                                    color: Colors.red),
                                              ))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 35, left: 125),
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.timelapse_sharp,
                                                    color: Colors.red,
                                                    size: 15,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(matchtlist[index].time),
                                                  const SizedBox(
                                                    width: 6,
                                                  ),
                                                  Image.asset(
                                                    'assets/logo/Calendar.png',
                                                    height: 17,
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  Text(matchtlist[index].date),
                                                ],
                                              ))),
                                      const Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 68, right: 200),
                                              child: Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.red,
                                                size: 18,
                                              ))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 65, right: 35),
                                              child: Text(
                                                matchtlist[index].address,
                                              ))),
                                    ],
                                  ),
                                ),
                              );
                            })
                      ]),
                ))));
  }
}
