class EventsModel {
  final String chekout;
  final String img;
  final int price;
  final String tournement;
  final String time;
  final String date;
  bool isFill;
  final String address;

  EventsModel(
      {required this.chekout,
      required this.img,
      required this.price,
      required this.tournement,
      required this.time,
      required this.isFill,
      required this.date,
      required this.address});
}

List<EventsModel> eventlist = [
  EventsModel(
      isFill: false,
      chekout: 'Checkout Events',
      img:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/640px-24701-nature-natural-beauty.jpg',
      price: 47,
      tournement: 'Basketball Tournament',
      time: '09:00 AM',
      date: '12 - 19 feb 2024',
      address: 'Gymnasium Park, Pst#29 11 ISB'),
  EventsModel(
      isFill: false,
      chekout: 'Checkout Events',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUgaz9vFqcwV8XrisJxym7vZWp1hIagN1SDA&s',
      price: 27,
      tournement: 'Athlink Social Club',
      time: '09:00 AM',
      date: '12 - 19 feb 2024',
      address: 'Gymnasium Park, Pst#29 11 ISB')
];
