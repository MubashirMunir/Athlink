import 'package:athlink/Common/FormFIelds/customtextfield';
import 'package:athlink/screens/detailedit/detailediet_viewmodel/detaileditviewmethode.dart';
import 'package:athlink/screens/personal_details/personal_details_view/personalDetail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailEditView extends StatelessWidget {
  const DetailEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GetBuilder<Detaileditviewmethod>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Get.to(() => const PersonalDetailView());
                        },
                        child: const Text('Edit'))
                  ],
                  centerTitle: true,
                  title: const Text(
                    'Profile',
                  )),
              body: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    minRadius: 40,
                  ),
                  Form(
                    key: ctrl.formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        CustomText(
                          controller: ctrl.name,
                          type: TextInputType.name,
                          hintText: 'Name',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          controller: ctrl.username,
                          type: TextInputType.emailAddress,
                          hintText: 'username',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          controller: ctrl.age,
                          type: TextInputType.phone,
                          hintText: '34',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          controller: ctrl.city,
                          type: TextInputType.phone,
                          hintText: 'city',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(color: Colors.white),
                          width: mq.width * .92,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 233),
                                  child: Icon(Icons.arrow_drop_down),
                                ),
                                underline: const SizedBox(),
                                hint: const Text(
                                  'Gender',
                                  style: TextStyle(color: Colors.black12),
                                ),
                                value: ctrl.lavel.value.trim().isEmpty
                                    ? null
                                    : ctrl.lavel.value,
                                onChanged: (value) {
                                  ctrl.lavel.value = value.toString();
                                  ctrl.update();
                                },
                                items: ctrl.gender
                                    .map((e) => DropdownMenuItem(
                                        value: e,
                                        onTap: () {},
                                        child: Text(e.toString())))
                                    .toList()),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 3,
                          key: key,
                          keyboardType: const TextInputType.numberWithOptions(),
                          controller: ctrl.bio,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0x1F3F91B3),
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0x1F3F91B3),
                            )),
                            border: InputBorder.none,
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(
                                    0x1F3F91B3), // Same visible color for focused error
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: 'write bio',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          controller: ctrl.age,
                          type: TextInputType.phone,
                          hintText: '43',
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ));
  }
}
