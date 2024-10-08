import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/prompts/prompts_viewModel/prompts_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsView extends StatelessWidget {
  const PromptsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromptsViewModel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                actions: [
                  TextButton(
                      onPressed: () {
                        ctrl.connectSocial();
                      },
                      child: const Text('Skip'))
                ],
              ),
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/logo/group1.jpg'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 220.0),
                    child: Text(
                      "Prompts",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 27,
                    ),
                    child: Text(
                      "Showcase your personality to community by adding a profile prompt",
                      style: TextStyle(fontSize: 17, color: Colors.black54),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0),
                    child: Text('${ctrl.count}/3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Form(
                        key: ctrl.formKey,
                        child: TextFormField(
                          showCursor: true,
                          // maxLength: 40,
                          maxLines: 3,
                          obscureText: false,
                          key: key,
                          controller: ctrl.prompt,
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
                            hintText: 'I am happy when',
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.black26),
                          ),
                        )),
                  ),
                  ctrl.count > 1
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Form(
                              key: ctrl.formKey2,
                              child: TextFormField(
                                showCursor: true,
                                // maxLength: 40,
                                maxLines: 3,
                                obscureText: false,
                                key: key,
                                controller: ctrl.prompt,
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
                                  hintText: 'I am happy when',
                                  hintStyle: const TextStyle(
                                      fontSize: 14, color: Colors.black26),
                                ),
                              )),
                        )
                      : const SizedBox(
                          height: 0,
                        ),
                  ctrl.count > 2
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Form(
                              key: ctrl.formKey3,
                              child: TextFormField(
                                showCursor: true,
                                // maxLength: 40,
                                maxLines: 3,
                                obscureText: false,
                                key: key,
                                controller: ctrl.prompt,
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
                                  hintText: 'I am happy when',
                                  hintStyle: const TextStyle(
                                      fontSize: 14, color: Colors.black26),
                                ),
                              )),
                        )
                      : const SizedBox(
                          height: 0,
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: PrimaryBTN(
                      callback: () {
                        ctrl.add();
                        // ctrl.toLocation();
                      },
                      color: Colors.blueGrey,
                      title: '+ Add Prompt',
                      width: 320,
                    ),
                  ),
                  const Spacer(),
                  PrimaryBTN(
                    callback: () {
                      ctrl.toPromptsList();
                    },
                    color: Colors.red,
                    title: 'Continue',
                    width: 320,
                  ),
                ],
              ),
            ));
  }
}
