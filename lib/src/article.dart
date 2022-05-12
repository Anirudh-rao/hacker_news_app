import 'dart:core';

class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  //Constructor
  const Article(
      {required this.text,
      required this.domain,
      required this.by,
      required this.age,
      required this.score,
      required this.commentsCount});
}

final articles = [
  new Article(
    text: "Google sends Apple a direct message about iMessage at IO",
    domain: "XDA.com",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentsCount: 62,
  ),
  new Article(
    text:
        "Cyclone Asani: Bengaluru records coldest day in May in 22 years, check temperature",
    domain: "IndiaToday.com",
    by: "Nmo",
    age: "5 hours",
    score: 188,
    commentsCount: 50,
  ),
  new Article(
    text: "The Crash of Crypto’s Perpetual Wealth Machine",
    domain: "IndianInc.com",
    by: "ZOho",
    age: "5 hours",
    score: 177,
    commentsCount: 62,
  ),
  new Article(
    text: "Ole",
    domain: "NYtimes.com",
    by: "zdw",
    age: "3 hours",
    score: 177,
    commentsCount: 62,
  ),
];
