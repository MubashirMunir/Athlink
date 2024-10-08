class ParticipentsModel {
  final String name;
  final String username;
  final int id;
  final String img;

  ParticipentsModel(
      {required this.name,
      required this.username,
      required this.id,
      required this.img});
}

List<ParticipentsModel> participantlists = [
  ParticipentsModel(
      name: 'Sabistian',
      username: '@username',
      id: 1,
      img:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/640px-24701-nature-natural-beauty.jpg'),
  ParticipentsModel(
      name: 'Mondikal',
      username: 'username',
      id: 2,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
  ParticipentsModel(
      name: 'Lokkis',
      username: '@username',
      id: 3,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
  ParticipentsModel(
      name: 'Logan',
      username: '@username',
      id: 4,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
  ParticipentsModel(
      name: 'Lokkis',
      username: '@username',
      id: 3,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
  ParticipentsModel(
      name: 'Lokkis',
      username: '@username',
      id: 3,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
  ParticipentsModel(
      name: 'Lokkis',
      username: '@username',
      id: 3,
      img:
          'https://s3-alpha-sig.figma.com/img/f0d0/2ad2/f4d075c1fa8155478e5bb26aaae69fc1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gP4JXtScb2LIJGBXTrY9cLYN4ExxzJrSkZFdNfzmgcMjc0y11BNPNdxhqx2xIzN~mHtGndDOdAiJmDxw8U4KLZYAn5oYIcNfWpeCDwGJHs2q4jQpu6-3RvGiIlOxxHQnvEoQ4MGWVgk~EOa6GFS-UqQOedzK-9x-Eqe8BCXPSP3jAxssrqGDafJVsgnXNoI0Qa0q1-ykbb2t-0PxUFDmr32SpnB4~CvW2c3sOv~PWJg4JZOL4jkO914rnxdonIi5yqRYGqCKD6-jiSxNhbfzO9DgMmA0wWnHP2UOUi2JmUcYAgxBB~LN~rPtfWMAOLCb6IQn7fBfhQ8gqxlObLUSOQ__'),
];
