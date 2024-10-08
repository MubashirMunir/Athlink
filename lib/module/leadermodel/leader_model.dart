class LeaderModel {
  final String first;
//  ='Eiden';
  final String second;
//  ='Jackson';
  final String third;
  //  ='Emma Aria';
  final String username;
  final int pehla;
  final int doja;
  final int tija;

  LeaderModel(
      {required this.pehla,
      required this.doja,
      required this.tija,
      required this.first,
      required this.second,
      required this.third,
      required this.username});
  //  ='@username';
}

LeaderModel leaderModel = LeaderModel(
    pehla: 1,
    doja: 2,
    tija: 3,
    first: 'Eiden',
    second: 'Jackson',
    third: 'Emma Aria',
    username: '@username');
