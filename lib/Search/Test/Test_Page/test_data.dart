import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/testResult.dart';
import '../TestsDetailes/hardnessTest/hardness_t_back.dart';
import '../TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/metullrigicalAnalysis/MetAnaMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/tensileTestMain.dart';

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
          pageTo: TensileTest(),
          subTitle: 'Find the microstructure property',
          image:
              'https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/s.png?raw=true',
          materialColor: Colors.green[700]))
      ..add(HeroType(
          title: 'Meturllgical Analysis',
          pageTo: metAnalysis(),
          subTitle: 'Find the microstructure & property',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ms.jpg?raw=true',
          materialColor: Colors.redAccent[700]));
  }
}
