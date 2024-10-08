import 'package:flutter/material.dart';

class ProfileModel {
  final String img;
  final String name;
  final String about;
  final String email;
  final String username;
  bool fav;
  final String accounts;
  final Icon facebook;
  final Image instagram;

  ProfileModel(
      {required this.name,
      required this.about,
      required this.img,
      required this.email,
      required this.username,
      required this.accounts,
      required this.facebook,
      required this.instagram,
      required this.fav});
}

ProfileModel profilemodel = ProfileModel(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRXxfn1j1vKFy8yJeBGl2AS6Dcah-lKgHofg&s',
    name: 'Rebbecca',
    about:
        "I'm a dedicated cricket player who thrives on the thrill of the game. I give my best in batting, bowling, and fielding, always aiming to improve. Teamwork and strategy are my core strengths. Off the field, I enjoy analyzing matches and staying updated with cricket news. Cricket isn't just a sport for me—it's my passion.",
    email: '@rebbeccac9',
    username: 'username',
    accounts: 'Social Accounts',
    facebook: const Icon(Icons.facebook),
    instagram: Image.asset(
      'assets/logo/Instagram.png',
      height: 18,
    ),
    fav: false);
