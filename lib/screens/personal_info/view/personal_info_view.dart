import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/personal_info/viewModel/personal_info_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../Common/FormFIelds/custom_text_field.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalInfoViewModel>(
        builder: (ctrl) => Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 80),
                Image.asset('assets/logo/group1.jpg'),
                const Padding(
                  padding: EdgeInsets.only(right: 150.0, top: 20),
                  child: Text(
                    'Personal Details',
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
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        IntlPhoneField(
                          controller: ctrl.phoneNumber,
                          decoration: InputDecoration(
                            counterText: '',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                          ),
                          initialCountryCode: 'Pakistan',
                          style: const TextStyle(fontSize: 13.5),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          showCursor: true,
                          obscureText: false,
                          key: key,
                          controller: ctrl.bio,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                            hintText: 'Bio',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.black26),
                          ),
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
                                  border: Border.all(
                                      width: 1, color: Colors.black12),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: InkWell(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          ctrl.open();
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                height: 55,
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
                                                              ctrl.selectedValue ==
                                                                      e
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .blue),
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
                        CustomTextField(
                          click: () {},
                          controller: ctrl.postalcode,
                          validateError: 'enter valid password',
                          type: TextInputType.phone,
                          hintText: 'Postal Code',
                          iconClik: () {},
                          obsecure: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          click: () {},
                          controller: ctrl.city,
                          validateError: 'enter valid password',
                          type: TextInputType.text,
                          hintText: 'City',
                          iconClik: () {},
                          obsecure: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          click: () {},
                          controller: ctrl.country,
                          validateError: 'enter valid password',
                          type: TextInputType.text,
                          hintText: 'Country',
                          iconClik: () {},
                          obsecure: false,
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
                                  border: Border.all(
                                      width: 1, color: Colors.black12),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
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
                                                height: 55,
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
                                                              ctrl.selectedValue1 ==
                                                                      e
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .blue),
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
                        TextFormField(
                          obscureText: false,
                          key: key,
                          controller: ctrl.dateController,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: const BorderSide(
                                    color: Color(0x1F3F91B3),
                                  )),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: const BorderSide(
                                    color: Color(0x1F3F91B3),
                                  )),
                              hintText: 'ad',
                              hintStyle: const TextStyle(
                                  fontSize: 14, color: Colors.black26),
                              suffix: IconButton(
                                  onPressed: () {
                                    ctrl.date(context);
                                  },
                                  icon: const Icon(
                                    Icons.calendar_month,
                                    size: 14,
                                  ))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          showCursor: true,
                          maxLength: 99,
                          maxLines: 3,
                          obscureText: false,
                          key: key,
                          controller: ctrl.location,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                  color: Color(0x1F3F91B3),
                                )),
                            hintText: 'Location',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.black26),
                          ),
                        ),
                        PrimaryBTN(
                          callback: () {
                            ctrl.createPost();
                          },
                          title: 'Next',
                          width: 400,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            )));
  }
}
