class Subcription {
  final String text;
  final String text1;
  final String text2;

  final String day;
  final String subsciption;
  final int price;

  Subcription(
      {required this.text1,
      required this.text2,
      required this.text,
      required this.day,
      required this.price,
      required this.subsciption});
}

List<Subcription> subcription = [
  Subcription(
    text: ' hi lorem ipsum set iemet value da bua ',
    day: 'Monthly',
    price: 23,
    subsciption: 'Premium Subscription',
    text1: 'hi lorem ipsum set iemet value da bua ',
    text2: 'hi lorem ipsum set iemet value da bua ',
  ),
  Subcription(
      text: ' hi lorem ipsum set iemet value da bua ',
      day: 'Yearly',
      price: 1503,
      subsciption: 'Premium Subscription',
      text1: 'hi lorem ipsum set iemet value da bua ',
      text2: 'hi lorem ipsum set iemet value da bua '),
];
