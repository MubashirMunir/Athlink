import 'package:athlink/module/events_model/events_model.dart';
import 'package:athlink/screens/event/viewModel/eventviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../module/first_eventmodel/first_event_model.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GetBuilder<EventViewModel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xFF132945),
                title:
                    const Text('Events', style: TextStyle(color: Colors.white)),
                centerTitle: true,
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
                        padding: EdgeInsets.only(
                          top: 145.0,
                        ),
                        child: Divider(
                          thickness: 5,
                          height: 5,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: eventlist.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                ctrl.toEvents();
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 10),
                                height: mq.height * .33,
                                // width: mq.width * .80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 12,
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20)),
                                              child: Image.network(
                                                eventlist[0].img,
                                                width: 320,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                left: 25, top: 130),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                infolist.match,
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25, top: 152),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white60,
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              height: 15,
                                              width: 45,
                                              child: const Center(
                                                  child: Text(
                                                '2 VS 2',
                                                style: TextStyle(fontSize: 11),
                                              )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 25),
                                      child: Row(children: [
                                        const Icon(
                                          Icons.timelapse_sharp,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(infolist.time),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/logo/Calendar.png',
                                          height: 12,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(infolist.date),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.red,
                                            size: 18,
                                          ),
                                          Text(infolist.address),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ),
            ));
  }
}
