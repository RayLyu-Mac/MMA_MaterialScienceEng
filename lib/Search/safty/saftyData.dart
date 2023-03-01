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

  ToolData(
      {required this.posCode,
      required this.name,
      required this.backImg,
      required this.pageTo,
      this.top = 5});
}

List<ToolData> safetyData = [
  (ToolData(
      name: "MSDS Sheet",
      pageTo: SearchListExample(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/MSDS.png?raw=true",
      posCode: "a")),
  (ToolData(
      name: "Fire Safety",
      posCode: "b",
      pageTo: ExtingshSymbols(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/fire.png?raw=true")),
  (ToolData(
      name: "Acids Safety",
      posCode: "c",
      pageTo: Aciddetail(),
      backImg:
          "https://cdn.shopify.com/s/files/1/1456/4892/products/WAR-20-ANSI_-_Warning_Acid_large.png?v=1520011003")),
  (ToolData(
      name: "Chemical Shower/ Eye washer",
      posCode: "g",
      pageTo: ChemicalShowerEyeWasher(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/eyewash.png?raw=true")),
  (ToolData(
      name: "WHMIS Symbol",
      posCode: "d",
      pageTo: WhimsSymbols(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/whims/bioharzard.jpg?raw=true")),
];

Map<String, Widget> to = {};
var sft = safetyData;
createSaftyList() {
  for (var eq = 0; eq < sft.length; eq++) {
    to.addAll({sft[eq].name: sft[eq].pageTo});
  }
  return to;
}
