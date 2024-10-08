class AcheivemntModel {
  final String totalmatch;
  // = '';
  final int totalMatchesvalue;
  // = 145;
  final String totalwin;
  // = '';
  final int totalWinvalue;
  //  = 75;
  final String winner;
  // = 'Winner';
  final String match;
  //  = '';
  final String Date;
  // = ;
  final String location;

  AcheivemntModel(
      {required this.totalmatch,
      required this.totalMatchesvalue,
      required this.totalwin,
      required this.totalWinvalue,
      required this.winner,
      required this.match,
      required this.Date,
      required this.location});
  // = ;
}

List<AcheivemntModel> achievement = [
  AcheivemntModel(
      totalmatch: 'Total Match Played',
      totalMatchesvalue: 145,
      totalwin: 'Total Win',
      totalWinvalue: 45,
      winner: 'Winner',
      match: 'Tenis Match 1v1',
      Date: '12 - 19 feb 2024',
      location: 'Gymnasium Park'),
  AcheivemntModel(
      totalmatch: 'Total Match Played',
      totalMatchesvalue: 145,
      totalwin: 'Total Win',
      totalWinvalue: 45,
      winner: 'Winner',
      match: 'Tenis Match 11v11',
      Date: '12 - 19 feb 2024',
      location: 'Gymnasium Park')
];
