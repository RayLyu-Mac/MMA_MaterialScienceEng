import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/metullrigicalAnalysis/MetAnaMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/tensileTestMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/ACLTest/ACLMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/CreepTest/CreepMain.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/fastFracture/FractureMain.dart';

class HeroType {
  String title;
  String subTitle;
  String image;
  double titleFontSize;
  Widget pageTo;
  Color materialColor;

  HeroType(
      {required this.title,
      required this.subTitle,
      required this.pageTo,
      required this.image,
      required this.materialColor,
      this.titleFontSize = 20});
}

List<HeroType> test_data_list = [
  (HeroType(
      title: 'UTM Case: Three Point Test',
      titleFontSize: 22,
      pageTo: TensileTest(),
      subTitle:
          'Use Elastic Modulus to compare advantage over \ndifferent structure (Compression)',
      image:
          'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Tensile/3p.jpg?raw=true',
      materialColor: Colors.green.shade300)),
  (HeroType(
      title: 'UTM Case: Elastic Modulus',
      titleFontSize: 22,
      pageTo: ACLTest(),
      subTitle:
          'Use Elastic Modulus to compare advantage over \ndifferent structure (Tension)',
      image:
          'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/tensile.png?raw=true',
      materialColor: Colors.green)),
  (HeroType(
      title: 'Meturllgical Analysis',
      pageTo: metAnalysis(),
      subTitle: 'Find the microstructure & property',
      image:
          'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/ms.jpg?raw=true',
      materialColor: Colors.red.shade700)),
  (HeroType(
      title: 'Creep Test (UTM + Heat Coil)',
      pageTo: CreepTest(),
      subTitle: 'Find the resistance to creep for alloy and pure material',
      image:
          'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/Creep/expSet.jpg?raw=true',
      materialColor: Colors.orange.shade100)),
  (HeroType(
      title: 'Crack resistant case',
      pageTo: FractureTest(),
      subTitle:
          'Find the resistance to crack for material with different heat treatment',
      image:
          'https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/test/crack/showPic.jpg?raw=true',
      materialColor: Colors.lightBlue.shade100))
];
