import 'package:flutter/material.dart';

class DrawerModel {
  final String text;
  final Widget? icon;

  DrawerModel({
    required this.text,
    this.icon,
  });
}

List<DrawerModel> drawerModel = [
  DrawerModel(
      text: 'Personal Details',
      // ignore: prefer_const_constructors
      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
      text: 'Account ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
    icon: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
        )),
    text: 'Notifications ',
  ),
  DrawerModel(
      text: 'Subscriptions ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
      text: 'Events ',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
      text: 'Language',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
      text: 'Privacy Policy',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
      text: 'Terms of Service',
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
      )),
  DrawerModel(
    text: 'Logout',
  ),
];
