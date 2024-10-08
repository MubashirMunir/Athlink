import 'package:athlink/Common/AppBTN/primary_btn.dart';
import 'package:athlink/module/account_model/account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: ListTile(
              trailing: accounmodel[0].icon,
              title: Text(accounmodel[0].text),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: ListTile(
              onTap: () {
                Get.to(const AccountView());
              },
              trailing: accounmodel[0].icon,
              title: Text(accounmodel[1].text),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: ListTile(
              trailing: accounmodel[0].icon,
              title: Text(accounmodel[3].text),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: ListTile(
              trailing: accounmodel[0].icon,
              title: Text(accounmodel[4].text),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: ListTile(
              onTap: () {
                AlertDialog alert = AlertDialog(
                  title: const Text("Delete Account"),
                  content: const Text("Are you sure you want to delete delete"),
                  actions: [
                    PrimaryBTN(
                        callback: () {},
                        color: Colors.red,
                        title: 'No',
                        width: 300),
                    const SizedBox(
                      height: 10,
                    ),
                    PrimaryBTN(
                        callback: () {},
                        color: Colors.black12,
                        title: 'Yes',
                        width: 300),
                  ],
                );

                // show the dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  },
                );
              },

              // trailing: accounmodel[0].icon,
              title: Text(accounmodel[5].text),
            ),
          ),
        ]),
      ),
    );
  }
}
