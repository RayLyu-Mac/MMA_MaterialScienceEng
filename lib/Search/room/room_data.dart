import 'package:flutter/material.dart';
import 'green_room.dart';

class HeroType {
  String title;
  String subTitle;
  String fText;
  String image;

  Widget forw;
  Color materialColor;

  HeroType(
      {required this.title,
      required this.subTitle,
      required this.fText,
      required this.image,
      required this.materialColor,
      required this.forw});
}

List<HeroType> RoomData = [
  HeroType(
      title: 'Green Room',
      subTitle: 'Room For Study and Group Work',
      fText:
          'Location: JHE 2nd Floor \n \nAvaiable Seat: 10 \n \nNeed Acess Card\n \n"Events that will happen here: \nMatls 2X03 Review session"',
      image:
          'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
      forw: green_Room(),
      materialColor: Colors.green.shade700),
  HeroType(
      title: 'Orange Room',
      subTitle: 'Room For Study and Group Work',
      fText:
          'Location: JHE 3rd Floor \n \nAvaiable Seat: 10 \n \nNeed Acess Card \n \n"Events that will happen here: \nMatls 2X03 Review session"',
      image:
          'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
      forw: green_Room(),
      materialColor: Colors.amber.shade700)
];
