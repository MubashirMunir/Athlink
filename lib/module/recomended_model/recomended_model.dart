import 'package:flutter/material.dart';

class RecomendedModel {
  final String match;
  final String img;
  final int price;
  final String tournement;
  final String time;
  final String date;
  final String address;
  final String bio;

  final Icon icon;

  RecomendedModel(
      {required this.match,
      required this.img,
      required this.price,
      required this.bio,
      required this.tournement,
      required this.time,
      required this.date,
      required this.icon,
      required this.address});
}

List<RecomendedModel> matchtlist = [
  RecomendedModel(
      bio:
          'Lorem ipsum dolor sit amet consectetur. Nunc viverra odio feugiat eget tortor arcu egestas. Risus viverra malesuada velit sit mattis morbi tellus suscipit aliquam. Et dui commodo amet ac libero. Nulla cras donec tincidunt sit dolor leo congue.',
      icon: const Icon(Icons.bookmark_outline_rounded),
      match: 'Tennis Match',
      img:
          'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
      price: 47,
      tournement: 'Basketball Tournament',
      time: '09:00 AM',
      date: '12-9 feb 2024',
      address: 'Gymnasium Park,G11 ISB'),
  RecomendedModel(
      bio:
          'Lorem ipsum dolor sit amet consectetur. Nunc viverra odio feugiat eget tortor arcu egestas. Risus viverra malesuada velit sit mattis morbi tellus suscipit aliquam. Et dui commodo amet ac libero. Nulla cras donec tincidunt sit dolor leo congue.',
      icon: const Icon(Icons.bookmark_outline_rounded),
      match: 'Athlink Match',
      img:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/800px-Cat03.jpg',
      price: 27,
      tournement: 'Athlink Social Club',
      time: '09:00 AM',
      date: '12-1 feb 2024',
      address: 'Gymnasium Park, G11 ISB')
];
