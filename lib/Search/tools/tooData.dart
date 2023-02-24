import 'package:flutter/cupertino.dart';
import 'package:mma_mse/Search/tools/enthalpy/data.dart';
import 'errorFunction/main.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'NormalDistribution/STDMain.dart';
import 'ConstantCheck/UnitConvMain.dart';
import 'phaseDiagram/phaseDMain.dart';
import 'enthalpy/main.dart';

class ToolData {
  String posCode;
  String name;
  String backImg;
  double? top;
  Widget pageTo;

  ToolData(
      {required this.posCode,
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
      posCode: "a")),
  (ToolData(
      name: "Hardness Conversion Sheet",
      posCode: "b",
      pageTo: hardnessData(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/hard.jpg?raw=true")),
  (ToolData(
      name: "Phase Diagram Check",
      posCode: "c",
      pageTo: PhaseDiag(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/phase.jpg?raw=true")),
  (ToolData(
      name: "Unit Conversion",
      posCode: "d",
      pageTo: UnitCOnverMain(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/unit.jpg?raw=true")),
  (ToolData(
      name: "Error function",
      posCode: "e",
      pageTo: errorFunction(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/erf.png?raw=true")),
  (ToolData(
      name: "Enthalpy Calculator",
      posCode: "f",
      pageTo: EnthalpyCal(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/Picture2.jpg?raw=true"))
];
