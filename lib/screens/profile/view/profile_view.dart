import 'package:athlink/Common/AppText/AppTextView.dart';
import 'package:athlink/Theme/colors.dart';
import 'package:athlink/module/achievements_model/achievment_model.dart';
import 'package:athlink/module/home_model/home_model.dart';
import 'package:athlink/screens/profile/viewModel/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return GetBuilder<ProfileViewmodel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      ctrl.toDrawer(context);
                    },
                    icon: const Icon(Icons.menu)),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined)),
                ],
              ),
              body: Column(
                children: [
                  const Text(
                    'Profile',
                    style:
                        TextStyle(fontWeight: FontWeights.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRXxfn1j1vKFy8yJeBGl2AS6Dcah-lKgHofg&s',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'John c.',
                        style: TextStyle(fontSize: 17),
                      ),
                      Icon(
                        Icons.verified,
                        size: 17,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  const Text(
                    '@johncv44',
                    style: TextStyle(color: Colors.black38, fontSize: 13),
                  ),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 5,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 5.0, color: AppColor.red),
                    ),
                    dividerColor: Colors.black12,
                    physics: const ScrollPhysics(),
                    controller: ctrl.tc,
                    tabs: const [
                      Tab(text: 'About'),
                      Tab(text: 'Achievment'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: ctrl.tc,
                      children: [
                        SingleChildScrollView(
                          child: Column(children: [
                            const SizedBox(height: 15),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Opacity(
                                      opacity: .6,
                                      child: Image.asset(
                                        'assets/logo/jim.png',
                                        width: mq.width * .92,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 50, top: 80),
                                      width: 230,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Text(
                                          'Upgrade to Athlnk +',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 130, top: 40),
                                      child: Image.asset(
                                        'assets/logo/group4.png',
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                )),
                            const SizedBox(height: 15),
                            Container(
                                width: mq.width * .93,
                                height: mq.height * .27,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: 220,
                                          bottom: 5,
                                          top: 10,
                                          left: 0),
                                      child: Text(
                                        'About me',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Text(
                                          "I'm a dedicated cricket player who thrives on the thrill of the game. I give my best in batting, bowling, and fielding, always aiming to improve. Teamwork and strategy are my core strengths. Off the field, I enjoy analyzing matches and staying updated with cricket news. Cricket isn't just a sport for me—it's my passion."),
                                    ),
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.facebook,
                                        color: Colors.blue,
                                      )),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/logo/Instagram.png',
                                      height: 18,
                                    ),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                            child: Row(
                                              children: [
                                                // SizedBox(
                                                //   width: 15,
                                                // ),
                                                Icon(Icons.add_business),
                                                VerticalDivider(
                                                  color: Colors.black12,
                                                  thickness: 1,
                                                ),
                                                Text('26'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(Icons.wrap_text),
                                                VerticalDivider(
                                                  color: Colors.black12,
                                                  thickness: 1,
                                                ),
                                                Text('Female'),
                                                SizedBox(
                                                  width: 20,
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
                                            padding: EdgeInsets.only(
                                                top: 10, right: 210),
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
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.red),
                                                child: IconButton(
                                                    onPressed: () {},
                                                    icon: const Text(
                                                      'English',
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
                                                        BorderRadius.circular(
                                                            10),
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
                                              padding: EdgeInsets.only(
                                                  top: 10, right: 145),
                                              child: Text(
                                                'Sports Preference',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeights.bold,
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
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.red),
                                                child: const Row(
                                                  children: [
                                                    Text(
                                                      ' Cricket :',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeights.bold),
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
                                            padding: const EdgeInsets.only(
                                                right: 130.0),
                                            child: Container(
                                                width: 170,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.red),
                                                child: const Row(
                                                  children: [
                                                    Text(
                                                      ' Volleyball :',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeights.bold),
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
                                            padding: const EdgeInsets.only(
                                                right: 170.0),
                                            child: Container(
                                                width: 125,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.red),
                                                child: const Row(
                                                  children: [
                                                    Text(
                                                      ' Workout :',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeights.bold),
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
                                          ClipRRect(
                                            child: Image.network(
                                                homemodel[index].img),
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
                                              left: 10,
                                              right: 10,
                                              top: 10,
                                              bottom: 10),
                                          width: mq.width * .95,
                                          height: mq.height * .14,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: Center(
                                              child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 176.0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Text(
                                                  homemodel[index].question,
                                                  style: const TextStyle(
                                                      color: Colors.redAccent,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 19),
                                                child: CustomText(
                                                    title:
                                                        homemodel[index].text),
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
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  achievement[0].totalmatch,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  achievement[0].totalwin,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  achievement[0].totalMatchesvalue.toString(),
                                  style: const TextStyle(
                                      color: Colors.redAccent, fontSize: 22),
                                ),
                                Text(achievement[0].totalWinvalue.toString(),
                                    style: const TextStyle(
                                        color: Colors.redAccent, fontSize: 22))
                              ],
                            ),
                            Expanded(
                              child: ListView.builder(
                                  padding: const EdgeInsets.all(10),
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: achievement.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(children: [
                                        ListTile(
                                          leading: Image.asset(
                                            'assets/logo/winner.png',
                                          ),
                                          title: Text(
                                            achievement[index].winner,
                                            style: const TextStyle(
                                                color: Colors.red),
                                          ),
                                          trailing: InkWell(
                                              onTap: () {
                                                ctrl.toLeader();
                                              },
                                              child: const Icon(
                                                  Icons.arrow_forward_ios)),
                                          subtitle:
                                              Text(achievement[index].match),
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 50,
                                            ),
                                            Image.asset(
                                              'assets/logo/Calendar.png',
                                              height: 16,
                                            ),
                                            Text(achievement[index].Date),
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.redAccent,
                                            ),
                                            Text(achievement[index].location),
                                          ],
                                        )
                                      ]),
                                    );
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
