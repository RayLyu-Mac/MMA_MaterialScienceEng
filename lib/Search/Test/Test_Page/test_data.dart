import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/testResult.dart';
import '../TestsDetailes/hardnessTest/hardness_t_back.dart';
import '../TestsDetailes/tensile_test_bg.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/metullrigicalAnalysis/MetAnaMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/tensileTestMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/ACLTest/ACLMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/CreepTest/CreepMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/alMicroStre/alMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/fastFracture/FractureMain.dart';

class HeroType {
  String title;
  String subTitle;
  String image;
  List _heroType;
  double contentFontsize;
  double titleFontSize;
  Widget pageTo;
  Color materialColor;

  HeroType(
      {this.title,
      this.subTitle,
      this.pageTo,
      this.image,
      this.contentFontsize,
      this.materialColor,
      this.titleFontSize});
  List<HeroType> test_data_list() {
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
          title: 'UTM Case: Three Point Test',
          titleFontSize: 22,
          contentFontsize: 14,
          pageTo: TensileTest(),
          subTitle:
              'Find the advantage of composite material from human bone structure',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/3p.jpg?raw=true',
          materialColor: Colors.green[400]))
      ..add(HeroType(
          title: 'UTM Case: Elastic Modulus',
          titleFontSize: 22,
          contentFontsize: 14,
          pageTo: ACLTest(),
          subTitle: 'Test the material strength for synthetic ACL graft',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/tensile.png?raw=true',
          materialColor: Colors.greenAccent))
      ..add(HeroType(
          title: 'Meturllgical Analysis',
          pageTo: metAnalysis(),
          subTitle: 'Find the microstructure & property',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ms.jpg?raw=true',
          materialColor: Colors.redAccent[700]))
      ..add(HeroType(
          title: 'Creep Test',
          pageTo: CreepTest(),
          subTitle: 'Find the resistance to creep for alloy and pure material',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/expSet.jpg?raw=true',
          materialColor: Colors.orangeAccent[100]))
      ..add(HeroType(
          title: 'Microstructure',
          pageTo: AlStrengthTest(),
          subTitle: 'Find the resistance to creep for alloy and pure material',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/expSet.jpg?raw=true',
          materialColor: Colors.orangeAccent[100]))
      ..add(HeroType(
          title: 'Crack resistant case',
          pageTo: FractureTest(),
          subTitle:
              'Find the resistance to crack for material with different heat treatment',
          image:
              'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/showPic.jpg?raw=true',
          materialColor: Colors.lightBlueAccent[100]));
  }
}

Map<String, Widget> testAva = {};
var qrd = HeroType().test_data_list();
createTestList() {
  for (var eq = 0; eq < qrd.length; eq++) {
    testAva.addAll({qrd[eq].title: qrd[eq].pageTo});
  }
  return testAva;
}
