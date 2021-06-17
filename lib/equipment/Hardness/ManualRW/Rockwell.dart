import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/rockwell/manual/manualRWMain.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class hardness_test extends StatefulWidget {
  hardness_test(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;

  @override
  _hardness_testState createState() => _hardness_testState();
}

class _hardness_testState extends State<hardness_test> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Analog RockWell Tester",
        warnVido: "t-4WN785oxM",
        extraIcon: FontAwesomeIcons.fileCsv,
        extraPage: hardnessData(),
        toolTip: "Hardness Conversion Sheet",
        instruction: ManualRWInstr(),
        backC: Colors.blueGrey[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/manualRW.jpg?raw=true",
        intro:
            "The machine measures the ability of the material to resist peneration, the sample can be in any reasonable size. \nFor Analog machine you need to read number from a gauge and convert it to kPsi using icon button below");
  }
}
