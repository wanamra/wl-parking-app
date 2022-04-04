import 'package:flutter/material.dart';

class IntroPage {
  IntroPage(
    this.image,
    this.title,
    this.desc,
    this.bgColor,
  );

  String image;
  String title;
  String desc;
  Color bgColor;

  factory IntroPage.fromJson(Map<String, dynamic> json) => IntroPage(
        json["image"],
        json["title"],
        json["desc"],
        json["bgColor"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "desc": desc,
        "bgColor": bgColor,
      };
}
