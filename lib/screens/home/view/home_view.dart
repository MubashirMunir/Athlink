import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/Theme/colors.dart';
import 'package:athlink/module/home_model/home_model.dart';
import 'package:athlink/module/profile_model/profile_model.dart';
import 'package:athlink/screens/home/viewModel/home_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return GetBuilder<HomeViewmodel>(
        builder: (ctrl) => SafeArea(
              child: Scaffold(
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.startFloat,
                floatingActionButton: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Colors.white,
                    tooltip: 'ok',
                    splashColor: Colors.grey,
                    child: const Text('X'),
                    onPressed: () {}),
                body: SingleChildScrollView(
                  child: Column(children: [
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              // margin: EdgeInsets.all(4),
                              width: 68,
                              height: 37,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: IconButton(
                                  onPressed: () {
                                    ctrl.tap();
                                  },
                                  icon: const Row(children: [
                                    Icon(
                                      Icons.filter_list,
                                      size: 15,
                                    ),
                                    Text(
                                      'Filter',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ])),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 38,
                          width: 257,
                          child: ctrl.filter
                              ? ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        // margin: const EdgeInsets.all(),
                                        width: 68,
                                        height: 37,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black12),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.white),
                                        child: const Center(
                                          child: Text(
                                            'Filter',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ));
                                  })
                              : const SizedBox(
                                  height: 0,
                                ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Container(
                        width: 220,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Text('Daily Suggested Profile 0-3'),
                        ),
                      ),
                    ),
                    ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            profilemodel.img,
                          ),
                        ),
                        title: CustomText(title: profilemodel.name),
                        subtitle: Text(profilemodel.email),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.messenger_outline),
                            ),
                            IconButton(
                                onPressed: () {
                                  profilemodel.fav = !profilemodel.fav;
                                  ctrl.update();
                                },
                                icon: profilemodel.fav
                                    ? Image.asset(
                                        'assets/logo/heart.png',
                                        height: 18,
                                      )
                                    : Image.asset(
                                        'assets/logo/heartfil.png',
                                        height: 18,
                                      ))
                          ],
                        )),
                    Container(
                        width: mq.width * .93,
                        height: mq.height * .27,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  right: 220, bottom: 5, top: 10, left: 0),
                              child: Text(
                                'About me',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(profilemodel.about))
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: mq.height * .06,
                      width: mq.width * .93,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Social Accounts',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: profilemodel.facebook,
                            color: Colors.blue,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: profilemodel.instagram,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: mq.width * .93,
                        height: mq.height * .50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.add_business),
                                        VerticalDivider(
                                          color: Colors.black12,
                                          thickness: 1,
                                        ),
                                        Text('26'),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(Icons.wrap_text),
                                        VerticalDivider(
                                          color: Colors.black12,
                                          thickness: 1,
                                        ),
                                        Text('Female'),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(Icons.location_disabled),
                                        VerticalDivider(
                                          color: Colors.black12,
                                          thickness: 1,
                                        ),
                                        Text('New Yourk')
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Divider(
                                    color: Colors.black12,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 210),
                                    child: Text(
                                      'Language',
                                      style: TextStyle(
                                          fontWeight: FontWeights.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: mq.width * .20,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Text(
                                              'Enlish',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: mq.width * .20,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Text(
                                              'German',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 145),
                                      child: Text(
                                        'Sports Preference',
                                        style: TextStyle(
                                            fontWeight: FontWeights.bold,
                                            fontSize: 17),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 170.0,
                                    ),
                                    child: Container(
                                        width: mq.width * 1,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red),
                                        child: const Row(
                                          children: [
                                            Text(
                                              ' Cricket :',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeights.bold),
                                            ),
                                            Text(
                                              ' Beginner',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 130.0),
                                    child: Container(
                                        width: 170,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red),
                                        child: const Row(
                                          children: [
                                            Text(
                                              ' Volleyball :',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeights.bold),
                                            ),
                                            Text(
                                              ' Intermediate',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 170.0),
                                    child: Container(
                                        width: 125,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.red),
                                        child: const Row(
                                          children: [
                                            Text(
                                              ' Workout :',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeights.bold),
                                            ),
                                            Text(
                                              ' Expert',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: List.generate(
                        homemodel.length,
                        (index) {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  SizedBox(
                                    width: mq.width * .93,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(11),
                                      child:
                                          Image.network(homemodel[index].img),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        homemodel[index].fav =
                                            !homemodel[index].fav;
                                        ctrl.update();
                                      },
                                      icon: homemodel[index].fav
                                          ? Image.asset(
                                              'assets/logo/heart.png',
                                              height: 18,
                                            )
                                          : Image.asset(
                                              'assets/logo/heartfil.png',
                                              height: 18,
                                            )),
                                ],
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10, bottom: 10),
                                  width: mq.width * .95,
                                  height: mq.height * .14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 176.0, top: 10, bottom: 10),
                                        child: Text(
                                          homemodel[index].question,
                                          style: const TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 19),
                                        child: CustomText(
                                            title: homemodel[index].text),
                                      )
                                    ],
                                  ))),
                            ],
                          );
                        },
                      ),
                    )
                  ]),
                ),
              ),
            ));
  }
}
