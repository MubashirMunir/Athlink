import 'package:athlink/screens/chat/viewModel/chat_viewmdel.dart';
import 'package:athlink/screens/conversation/view/conversation_viewdart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GetBuilder<ChatViewmdel>(
        builder: (ctrl) => Scaffold(
              appBar: AppBar(
                title: const Text('Liked Profiles'),
              ),
              body: Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      ),
                      width: mq.width * 0.9,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            Get.to(const ConversationView());
                          },
                          trailing: const Column(
                            children: [Text('time'), Text('sms')],
                          ),
                          leading: const CircleAvatar(
                            backgroundColor: Colors.orange,
                          ),
                          title: const Text('name'),
                          subtitle: Text('Profile $index'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ));
  }
}
