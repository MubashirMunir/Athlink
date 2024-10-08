import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/module/first_eventmodel/first_event_model.dart';
import 'package:athlink/screens/pastevent/pastevent_viewModel/pastevent_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:athlink/Common/AppBTN/primary_btn.dart';

class PastEventView extends StatelessWidget {
  const PastEventView(
      {Key? key,
      required this.price,
      required this.name,
      required this.time,
      required this.date})
      : super(key: key);
  final String price;
  final String name;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PasteventViewmodel>(
      builder: (ctrl) => Scaffold(
          appBar: AppBar(),
          body: Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 200,
                        child: Stack(children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:
                                  SizedBox(child: Image.network(infolist.img)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, bottom: 19),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(14)),
                                height: 17,
                                width: 60,
                                child: const Center(child: Text('2 VS 2')),
                              ),
                            ),
                          )
                        ]),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(title: name),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                                fontSize: 19, color: Colors.red),
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
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(infolist.time),
                          const SizedBox(
                            width: 110,
                          ),
                          Image.asset(
                            'assets/logo/Calendar.png',
                            height: 17,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(date),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.only(right: 205, top: 20),
                        child: Text(
                          infolist.desc,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 27, vertical: 8),
                        child: Text(infolist.bio),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, top: 0, bottom: 0),
                        child: Row(
                          children: [
                            const Text(
                              'Participants',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            const SizedBox(
                              width: 150,
                            ),
                            TextButton(
                                onPressed: () {}, child: const Text('see all')),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 50,
                          width: 320,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const CircleAvatar(
                                  maxRadius: 32,
                                  backgroundImage: NetworkImage(
                                      'https://www.psychologs.com/wp-content/uploads/2024/01/8-tips-to-be-a-jolly-person.jpg'),
                                  backgroundColor: Colors.black,
                                );
                              })),
                      Padding(
                        padding: const EdgeInsets.only(right: 240, top: 20),
                        child: Text(
                          infolist.loc,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 315,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://myelement.co.in/img/map-nearby-mobilenew.png')),
                            borderRadius: BorderRadius.circular(23)),
                      ),
                    ],
                  );
                }),
          ),
          bottomSheet: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
              PrimaryBTN(
                  callback: () {
                    // ctrl.makePayment(context);
                    // ctrl.participantlist();
                  },
                  color: Colors.red,
                  title: 'Results',
                  width: 250),
            ],
          )),
    );
  }
}
