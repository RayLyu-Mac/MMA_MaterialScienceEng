import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Instruction/MicroHardnessTester/MicroHardnessMain.dart';

class AutomaticMicroHardnessMain extends StatefulWidget {
  AutomaticMicroHardnessMain({Key key}) : super(key: key);

  @override
  _AutomaticMicroHardnessMainState createState() =>
      _AutomaticMicroHardnessMainState();
}

class _AutomaticMicroHardnessMainState
    extends State<AutomaticMicroHardnessMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Auto MicroHardness Tester",
        warnNote:
            "•Ask Technical Staff for Holder \n•Ensure the Magnification is at 100X\n•Damage will occur to the indenter if the indenter comes in contact with holder\n•Cut the sample slowly\n•Ensure the sample is in focus before move to 400X",
        extraIcon: FontAwesomeIcons.fileCsv,
        extraPage: hardnessData(),
        toolTip: "Hardness Conversion Sheet",
        instruction: MHTinstruction(),
        backC: Colors.blueGrey[50],
        img:
            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mht.jpg?raw=true",
        intro: "Needed");
  }
}
