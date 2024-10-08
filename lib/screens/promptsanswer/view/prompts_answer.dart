import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/screens/promptsanswer/prompts_answer_viewModel/prompts_answer_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsAnswer extends StatelessWidget {
  const PromptsAnswer({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromptAnswerModel>(
        builder: (ctrl) => Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset('assets/logo/group1.jpg'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 160.0),
                    child: Text(
                      "Prompts Answer",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: PrimaryBTN(
                      callback: () {},
                      color: Colors.blueGrey,
                      title: title,
                      width: 320,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Form(
                        key: ctrl.formKey,
                        child: TextFormField(
                          showCursor: true,
                          maxLength: 255,
                          maxLines: 15,
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
                  const Spacer(),
                  PrimaryBTN(
                    callback: () {
                      ctrl.toConnectSocial();
                    },
                    color: Colors.red,
                    title: 'Add',
                    width: 320,
                  ),
                ],
              ),
            ));
  }
}
