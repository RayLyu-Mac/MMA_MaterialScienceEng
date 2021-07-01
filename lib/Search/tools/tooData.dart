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
  double top;
  Widget pageTo;

  ToolData({this.posCode, this.name, this.backImg, this.pageTo, this.top});

  List<ToolData> createToolList() {
    List toolD = List<ToolData>();
    return toolD
      ..add(ToolData(
          name: "Stats Tool",
          pageTo: STDCheck(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/stats.png?raw=true",
          posCode: "a"))
      ..add(ToolData(
          name: "Hardness Conversion Sheet",
          posCode: "b",
          pageTo: hardnessData(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/hard.jpg?raw=true"))
      ..add(ToolData(
          name: "Phase Diagram Check",
          posCode: "c",
          pageTo: PhaseDiag(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/phase.jpg?raw=true"))
      ..add(ToolData(
          name: "Unit Conversion",
          posCode: "d",
          pageTo: UnitCOnverMain(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/unit.jpg?raw=true"))
      ..add(ToolData(
          name: "Error function",
          posCode: "e",
          pageTo: EnthalpyCal(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/erf.png?raw=true"));
  }
}

Map<String, Widget> to = {};
var qrd = ToolData().createToolList();
createToolList() {
  for (var eq = 0; eq < qrd.length; eq++) {
    to.addAll({qrd[eq].name: qrd[eq].pageTo});
  }
  return to;
}
