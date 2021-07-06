import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/Etching/acidSafyFinal.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'FireSafty/FireMain.dart';
import 'Whims/WhimsMain.dart';
import 'ShowerWasher/ShowerMain.dart';
import 'package:mma_mse/equipment/Etching/AcidSafty/AcidMain.dart';

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
          name: "MSDS Sheet",
          pageTo: SearchListExample(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/MSDS.png?raw=true",
          posCode: "a"))
      ..add(ToolData(
          name: "Fire Safty",
          posCode: "b",
          pageTo: ExtingshSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/fire.png?raw=true"))
      ..add(ToolData(
          name: "Acids Safty",
          posCode: "c",
          pageTo: Aciddetail(),
          backImg:
              "https://cdn.shopify.com/s/files/1/1456/4892/products/WAR-20-ANSI_-_Warning_Acid_large.png?v=1520011003"))
      ..add(ToolData(
          name: "Chemical Shower/ Eye washer",
          posCode: "g",
          pageTo: ChemicalShowerEyeWasher(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/eyewash.png?raw=true"))
      ..add(ToolData(
          name: "WHIMS Symbol",
          posCode: "d",
          pageTo: WhimsSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/bioharzard.jpg?raw=true"));
  }
}

Map<String, Widget> to = {};
var sft = ToolData().createToolList();
createSaftyList() {
  for (var eq = 0; eq < sft.length; eq++) {
    to.addAll({sft[eq].name: sft[eq].pageTo});
  }
  return to;
}
