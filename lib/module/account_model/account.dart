import 'package:flutter/material.dart';

class AccountModel {
  final String text;
  final Widget? icon;

  AccountModel({
    required this.text,
    this.icon,
  });
}

List<AccountModel> accounmodel = [
  AccountModel(
      text: 'Bookmarks',
      // ignore: prefer_const_constructors
      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  AccountModel(
      text: 'Images ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  AccountModel(
    icon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
        )),
    text: 'Prompts ',
  ),
  AccountModel(
      text: 'Sports intreset ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  AccountModel(
      text: 'Social  Accounts ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  AccountModel(
    text: 'Delete Account',
  ),
];
