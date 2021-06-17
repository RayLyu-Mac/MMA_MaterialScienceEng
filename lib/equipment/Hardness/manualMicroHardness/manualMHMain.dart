import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'package:mma_mse/Instruction/ManualMicroHardness/MMicroHardMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManualMicroHardness extends StatefulWidget {
  final String location;
  final String emailTo;
  ManualMicroHardness(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _ManualMicroHardnessState createState() => _ManualMicroHardnessState();
}

class _ManualMicroHardnessState extends State<ManualMicroHardness> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Manual MicroHardness Test",
        warnVido: "t-4WN785oxM",
        extraIcon: FontAwesomeIcons.fileCsv,
        extraPage: hardnessData(),
        toolTip: "Hardness Conversion Sheet",
        instruction: ManualMicHardnessInstru(),
        backC: Colors.blueGrey[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/microHardness.png?raw=true",
        intro:
            "An indent is made on the surface of the material to measure the material's hardness. The sample has to be polished prior to experiement.\n\nFor Manual tester: each indent is done manually and either the software measures or the user measures the indent");
  }
}
