import 'package:athlink/Theme/colors.dart';
import 'package:athlink/screens/conversation/viewModel/conversation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConversationView extends StatelessWidget {
  const ConversationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConversationViewmodel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                title: const Text('name'),
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 5,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 5.0, color: AppColor.red),
                  ),
                  dividerColor: Colors.black12,
                  physics: const ScrollPhysics(),
                  controller: ctrl.tabController,
                  tabs: const [
                    Tab(text: 'Chat'),
                    Tab(text: 'Profile'),
                    Tab(text: 'Acheivments'),
                  ],
                ),
              ),
              body: TabBarView(
                controller: ctrl.tabController,
                children: const [
                  Center(child: Text('Content for Tab 1')),
                  Center(child: Text('Content for Tab 2')),
                  Center(child: Text('Content for Tab 3')),
                ],
              ),
            ));
  }
}
