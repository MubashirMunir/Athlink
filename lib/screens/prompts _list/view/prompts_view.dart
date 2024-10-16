import 'package:athlink/Common/custom_list.dart';
import 'package:athlink/module/prompts_model.dart';
import 'package:athlink/screens/prompts%20_list/viewModel/prompts_viewModel.dart';
import 'package:athlink/screens/promptsanswer/view/prompts_answer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptsListView extends StatelessWidget {
  const PromptsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromptsListViewModel>(
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
                    padding: EdgeInsets.only(right: 220.0),
                    child: Text(
                      "Prompts",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: promptsList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: CustomList(
                              title: promptsList[index].title,
                              callback: () {
                                Get.to(() => PromptsAnswer(
                                      title: promptsList[index].title,
                                    ));
                              },
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ));
  }
}
