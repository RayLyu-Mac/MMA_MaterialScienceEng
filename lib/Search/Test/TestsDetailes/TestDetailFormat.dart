import 'package:flutter/material.dart';

class testdetailData {
  String title;
  String content;
  String backImg;
  String addOnImg;
  Widget pageTo;
  double height;
  double left;
  double top;
  double width;

  testdetailData(
      {required this.title,
      required this.content,
      required this.backImg,
      required this.left,
      required this.addOnImg,
      required this.width,
      required this.top,
      required this.pageTo,
      required this.height});
}
