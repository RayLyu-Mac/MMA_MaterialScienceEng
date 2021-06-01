import 'package:flutter/cupertino.dart';
import 'package:mma_mse/equipment/safty sheet/MSDS.dart';
import 'package:mma_mse/equipment/Etching/acidProtocol.dart';
import 'FireSafty/FireMain.dart';
import 'Whims/WhimsMain.dart';

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
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true",
          posCode: "a"))
      ..add(ToolData(
          name: "Fire Safty",
          posCode: "b",
          pageTo: ExtingshSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "Personal Protection Equipment",
          posCode: "c",
          pageTo: AcidSafty(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "WHIMS Symbol",
          posCode: "d",
          pageTo: WhimsSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "Chemical Safty",
          pageTo: SearchListExample(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true",
          posCode: "a"))
      ..add(ToolData(
          name: "Fire Safty",
          posCode: "b",
          pageTo: ExtingshSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "Personal Protection Equipment",
          posCode: "c",
          pageTo: AcidSafty(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"))
      ..add(ToolData(
          name: "WHIMS Symbol",
          posCode: "d",
          pageTo: WhimsSymbols(),
          backImg:
              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"));
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
