class ImagesModel {
  final String img;
  final String text;
  final String question;
  bool fav;
  final int id;
  ImagesModel({
    required this.fav,
    required this.img,
    required this.text,
    required this.id,
    required this.question,
  });
}

List<ImagesModel> homemodel = [
  ImagesModel(
      fav: false,
      img:
          'https://media.istockphoto.com/id/1367872098/photo/full-length-shot-of-a-handsome-young-male-athlete-running-on-an-outdoor-track.jpg?s=612x612&w=0&k=20&c=imRu7XY3ObDjdy33ksq9MWYrzY1mj_-kfk4f5GknAsU=',
      text: "I'm Happiest when i play cricket with my old fellows",
      question: 'I,m happiest when',
      id: 1),
  ImagesModel(
      fav: false,
      img:
          'https://hips.hearstapps.com/hmg-prod/images/dina-asher-smith-of-great-britain-winning-the-200-meter-news-photo-1601471107.jpg',
      text: 'its good',
      question: '',
      id: 2),
  ImagesModel(
      fav: false,
      img:
          'https://cdn.prod.website-files.com/5ca5fe687e34be0992df1fbe/603e187191178d04eb3ac793_benefits-of-athletics.jpeg',
      text: '',
      question: '',
      id: 3),
];
