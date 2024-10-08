class OnBoardModel {
  String image;
  String text;
  String desc;
  OnBoardModel({required this.image, required this.desc, required this.text});
}

List<OnBoardModel> screens = <OnBoardModel>[
  OnBoardModel(
    text: "Meet",
    image: 'assets/logo/onboard1.png',
    desc: "Level up your game.Connect with athelets from every spot",
  ),
  OnBoardModel(
      image: 'assets/logo/onboard2.png',
      desc: "Find your training squad.Share sweat,gaols and victories",
      text: "Connect"),
  OnBoardModel(
      image: 'assets/logo/onboard3.png',
      desc: 'Unleash your potential.Train smarter compete harder',
      text: "Get Your Game on"),
];
