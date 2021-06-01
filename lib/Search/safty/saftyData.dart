import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'package:mma_mse/equipment/Etching/acidProtocol.dart';
import 'package:mma_mse/HardnessConversion/Data.dart';

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
          name: "Chemical Safty",
          pageTo: SearchListExample(),
          top: 1,
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true",
          posCode: "a"))
      ..add(ToolData(
          name: "Fire Safty",
          posCode: "b",
          pageTo: hardnessData(),
          top: 1,
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "Personal Protection Equipment",
          posCode: "c",
          pageTo: AcidSafty(),
          top: 1,
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "Contact Info",
          posCode: "d",
          pageTo: AcidSafty(),
          top: 1,
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"));
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
