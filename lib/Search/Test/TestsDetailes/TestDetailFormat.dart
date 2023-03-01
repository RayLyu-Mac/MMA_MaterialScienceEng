import 'package:flutter/material.dart';

class testdetailData {
  String title;
  String content;
  String backImg;
  String? addOnImg;
  Widget? pageTo;
  double? height;
  double? left;
  double? top;
  double? width;

  testdetailData(
      {required this.title,
      required this.content,
      required this.backImg,
      this.left,
      this.addOnImg,
      this.width,
      this.top,
      this.pageTo,
      this.height});
}
