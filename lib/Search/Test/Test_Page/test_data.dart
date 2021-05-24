import 'package:flutter/material.dart';
import '../TestsDetailes/hardness_t_back.dart';
import '../TestsDetailes/tensile_test_bg.dart';

class HeroType {
  String title;
  String subTitle;
  String image;
  List _heroType;
  Widget pageTo;
  Color materialColor;

  HeroType(
      {this.title, this.subTitle, this.pageTo, this.image, this.materialColor});
  List<HeroType> test_data_list() {
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
          title: 'Hardness Test',
          subTitle: 'Test for material mechanical property',
          pageTo: hardness_test_bg(),
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
          materialColor: Colors.amber[700]))
      ..add(HeroType(
          title: 'Tensile Test',
          pageTo: tensile_test_bg(),
          subTitle: 'Find the microstructure property',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
          materialColor: Colors.green[700]))
      ..add(HeroType(
          title: 'Hall Effect',
          pageTo: tensile_test_bg(),
          subTitle: 'Find the microstructure property',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
          materialColor: Colors.green[700]));
  }
}
