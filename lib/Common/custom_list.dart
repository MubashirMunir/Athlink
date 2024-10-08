import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({
    Key? key,
    required this.title,
    required this.callback,
  }) : super(key: key);
  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: mq * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: callback,
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
              )),
        ),
      ),
    );
  }
}
