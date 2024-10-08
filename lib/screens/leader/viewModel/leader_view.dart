import 'package:athlink/module/leadermodel/leader_model.dart';
import 'package:athlink/module/participents/participents.dart';
import 'package:flutter/material.dart';

class LeaderView extends StatelessWidget {
  const LeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tennis Match',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        backgroundColor: const Color.fromARGB(255, 4, 1, 51),
        body: Column(
          children: [
            Row(
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, top: 200),
                    child: Container(
                      height: mq.height * .15,
                      width: mq.width * .26,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(56, 153, 209, .8),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 175.0, left: 55),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border width
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(25), // Image radius
                          child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/6/69/OWl.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 230),
                    child: Text(
                      leaderModel.second,
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 73.0, top: 216.8),
                      child: Image.asset(
                        'assets/logo/angel.png',
                        color: Colors.red,
                        height: 19,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 77, top: 216.8),
                      child: Text(leaderModel.doja.toString())),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 250),
                    child: Text(
                      leaderModel.username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 270),
                      child: Image.asset('assets/logo/winner.png'))
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 160,
                    ),
                    child: Container(
                      height: mq.height * .20,
                      width: mq.width * .26,
                      decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17.6,
                      top: 130.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border width
                      decoration: const BoxDecoration(
                          color: Colors.yellow, shape: BoxShape.circle),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(25),
                          child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/6/69/OWl.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 235),
                      child: Image.asset('assets/logo/winner.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 210),
                    child: Text(
                      leaderModel.username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 190),
                    child: Text(
                      leaderModel.first,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 28.0, top: 105),
                      child: Image.asset('assets/logo/taj.png')),
                  Padding(
                      padding: const EdgeInsets.only(left: 35.0, top: 172),
                      child: Image.asset(
                        'assets/logo/angel.png',
                        color: Colors.yellow,
                        height: 19,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 172),
                      child: Text(leaderModel.pehla.toString())),
                ]),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      height: mq.height * .15,
                      width: mq.width * .26,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(56, 153, 209, .8),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 175.0, left: 17),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border width
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(25), // Image radius
                          child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/6/69/OWl.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 35.0, top: 216.8),
                      child: Image.asset(
                        'assets/logo/angel.png',
                        color: Colors.green,
                        height: 19,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 39.7, top: 216.8),
                      child: Text(leaderModel.tija.toString())),
                  Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 270),
                      child: Image.asset('assets/logo/winner.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 250),
                    child: Text(
                      leaderModel.username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 230),
                    child: Text(
                      leaderModel.third,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  // height: mq.height * .46,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.black),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: participantlists.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(
                              participantlists[index].name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              participantlists[index].username,
                              style: const TextStyle(color: Colors.white),
                            ),
                            leading: SizedBox(
                              width: 85,
                              child: Row(
                                children: [
                                  Text(
                                    participantlists[index].id.toString(),
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        participantlists[index].img),
                                  ),
                                ],
                              ),
                            ));
                      })),
            )
          ],
        ),
      ),
    );
  }
}
