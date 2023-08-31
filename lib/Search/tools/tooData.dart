import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/enthalpy/data.dart';
import 'errorFunction/main.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'NormalDistribution/STDMain.dart';
import 'ConstantCheck/UnitConvMain.dart';
import 'phaseDiagram/phaseDMain.dart';
import 'enthalpy/main.dart';

class ToolData {
  Color bgColor;
  String name;
  String backImg;
  double? top;
  Widget pageTo;

  ToolData(
      {required this.bgColor,
      required this.name,
      required this.backImg,
      required this.pageTo,
      this.top});
}

List<ToolData> createToolList = [
  (ToolData(
      name: "Stats Tool",
      pageTo: STDCheck(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/stats.png?raw=true",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8))),
  (ToolData(
      name: "Hardness Conversion Sheet",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8),
      pageTo: hardnessData(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/hard.jpg?raw=true")),
  (ToolData(
      name: "Phase Diagram Check",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8),
      pageTo: PhaseDiag(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/phase.jpg?raw=true")),
  (ToolData(
      name: "Unit Conversion",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8),
      pageTo: UnitCOnverMain(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/unit.jpg?raw=true")),
  (ToolData(
      name: "Error function",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8),
      pageTo: errorFunction(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/erf.png?raw=true")),
  (ToolData(
      name: "Enthalpy Calculator",
      bgColor: Colors.blueAccent.shade100.withOpacity(0.8),
      pageTo: EnthalpyCal(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/Picture2.jpg?raw=true"))
];
