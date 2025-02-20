import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'FireSafty/FireMain.dart';
import 'Whims/WhimsMain.dart';
import 'ShowerWasher/ShowerMain.dart';
import 'package:mma_mse/equipment/Etching/AcidSafty/AcidMain.dart';

class ToolData {
  final Color bgColor;
  final Widget pageTo;
  final String backImg;
  final String name;

  ToolData({
    required this.bgColor,
    required this.pageTo,
    required this.backImg,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'bgColor': bgColor,
      'pageTo': pageTo,
      'backImg': backImg,
      'name': name,
    };
  }
}

List<ToolData> safetyData = [
  (ToolData(
      name: "MSDS Sheet",
      pageTo: SearchListExample(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/MSDS.png?raw=true",
      bgColor: Colors.red.shade100.withOpacity(0.7))),
  (ToolData(
      name: "Fire Safety",
      bgColor: Colors.red.shade100.withOpacity(0.7),
      pageTo: ExtingshSymbols(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/fire.png?raw=true")),
  (ToolData(
      name: "Acids Safety",
      bgColor: Colors.red.shade100.withOpacity(0.7),
      pageTo: Aciddetail(),
      backImg:
          "https://cdn.shopify.com/s/files/1/1456/4892/products/WAR-20-ANSI_-_Warning_Acid_large.png?v=1520011003")),
  (ToolData(
      name: "Chemical Shower/ Eye washer",
      bgColor: Colors.red.shade100.withOpacity(0.7),
      pageTo: ChemicalShowerEyeWasher(),
      backImg:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/eyewash.png?raw=true")),
  (ToolData(
      name: "WHMIS Symbol",
      bgColor: Colors.red.shade100.withOpacity(0.7),
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
