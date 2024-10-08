import 'package:flutter/material.dart';

class FirstEventModel {
  final String match;
  final String img;
  final String price;
  final String tournement;
  final String time;
  final String date;
  final String desc;
  final String loc;
  final String address;
  final String bio;

  final Icon icon;

  FirstEventModel(
      {required this.match,
      required this.img,
      required this.desc,
      required this.price,
      required this.bio,
      required this.tournement,
      required this.time,
      required this.date,
      required this.icon,
      required this.loc,
      required this.address});
}

FirstEventModel infolist = FirstEventModel(
    desc: 'Description',
    loc: 'Location',
    bio:
        'Lorem ipsum dolor sit amet consectetur. Nunc viverra odio feugiat eget tortor arcu egestas. Risus viverra malesuada velit sit mattis morbi tellus suscipit aliquam. Et dui commodo amet ac libero. Nulla cras donec tincidunt sit dolor leo congue.',
    icon: const Icon(Icons.bookmark_outline_rounded),
    match: 'Tennis Match',
    img:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Youth-soccer-indiana.jpg/450px-Youth-soccer-indiana.jpg',
    price: '${47}\$',
    tournement: 'Basketball Tournament',
    time: '09:00 AM',
    date: '12-9 feb 2024',
    address: 'Gymnasium Park,G11 ISB');
