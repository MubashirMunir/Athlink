import 'package:athlink/module/participents/participents.dart';
import 'package:athlink/screens/participantlist/viewModel/participantlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParticipantListView extends StatelessWidget {
  const ParticipantListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GetBuilder<ParticipantlistViewmodel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                title: const Text('Participants'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: mq.height * .06,
                        width: mq.width * .8,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 230, top: 5),
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.search)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 36),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 68,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          child: IconButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: mq.height * .40,
                                      width: mq.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const Text(
                                            'Filter',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: TextButton(
                                                onPressed: () {},
                                                child: const Text('clear')),
                                          ),
                                          Container(
                                            height: mq.height * .05,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12,
                                                    width: 1),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Obx(
                                              () => DropdownButton(
                                                hint: const Text('Experience'),
                                                underline: const SizedBox(),
                                                value: ctrl.dropdownvalue.value
                                                        .trim()
                                                        .isEmpty
                                                    ? null
                                                    : ctrl.dropdownvalue.value
                                                        .trim(),
                                                onChanged: (value) {
                                                  ctrl.dropdownvalue.value =
                                                      value.toString();
                                                  ctrl.dropdownvalue.refresh();
                                                },
                                                items: ctrl.experience
                                                    .map((e) =>
                                                        DropdownMenuItem(
                                                            onTap: () {},
                                                            value: e,
                                                            child: Text(e)))
                                                    .toList(),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: mq.height * .05,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12,
                                                    width: 1),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Obx(
                                              () => DropdownButton(
                                                hint: const Text('Sports'),
                                                value: ctrl.dropdownvalue1.value
                                                        .trim()
                                                        .isEmpty
                                                    ? null
                                                    : ctrl.dropdownvalue1.value
                                                        .trim(),
                                                underline: const SizedBox(),
                                                // value: ctrl.dropdownvalue.value,
                                                onChanged: (value) {
                                                  ctrl.dropdownvalue1.value =
                                                      value.toString();
                                                  ctrl.dropdownvalue1.refresh();
                                                },
                                                items: ctrl.sports
                                                    .map((e) =>
                                                        DropdownMenuItem(
                                                            onTap: () {},
                                                            value: e,
                                                            child: Text(e)))
                                                    .toList(),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: mq.height * .05,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12,
                                                    width: 1),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Obx(
                                              () => DropdownButton(
                                                hint: const Text('Country'),
                                                value: ctrl.dropdownvalue2.value
                                                        .trim()
                                                        .isEmpty
                                                    ? null
                                                    : ctrl.dropdownvalue2.value
                                                        .trim(),
                                                underline: const SizedBox(),
                                                // value: ctrl.dropdownvalue.value,
                                                onChanged: (value) {
                                                  ctrl.dropdownvalue2.value =
                                                      value.toString();
                                                  ctrl.dropdownvalue2.refresh();
                                                },
                                                items: ctrl.country
                                                    .map((e) =>
                                                        DropdownMenuItem(
                                                            onTap: () {},
                                                            value: e,
                                                            child: Text(e)))
                                                    .toList(),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: mq.height * .05,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12,
                                                    width: 1),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Obx(
                                              () => DropdownButton(
                                                onTap: () {
                                                  print('object');
                                                },
                                                hint: const Text('City'),
                                                underline: const SizedBox(),
                                                value: ctrl.dropdownvalue3.value
                                                        .trim()
                                                        .isEmpty
                                                    ? null
                                                    : ctrl.dropdownvalue3.value
                                                        .trim(),
                                                onChanged: (value) {
                                                  ctrl.dropdownvalue3.value =
                                                      value.toString();
                                                  ctrl.dropdownvalue3.refresh();
                                                },
                                                items: ctrl.city
                                                    .map((e) =>
                                                        DropdownMenuItem(
                                                            alignment: Alignment
                                                                .center,
                                                            onTap: () {},
                                                            value: e,
                                                            child: Text(
                                                              e,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            )))
                                                    .toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
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
                      height: mq.height,
                      width: mq.width * 1,
                      child: ListView.builder(
                          itemCount: participantlists.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: ListTile(
                                  style: ListTileStyle.drawer,
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.message,
                                        size: 15,
                                      )),
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        participantlists[index].img),
                                    backgroundColor: Colors.deepOrange,
                                  ),
                                  title: SizedBox(
                                    width: 100,
                                    child: Row(
                                      children: [
                                        Text(participantlists[index].name),
                                        const Icon(
                                          Icons.verified_sharp,
                                          color: Colors.blue,
                                          size: 13,
                                        )
                                      ],
                                    ),
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Text(participantlists[index].username),
                                      const Text('data'),
                                    ],
                                  )),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ));
  }
}
