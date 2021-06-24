import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/utm_instruction/utmInstructionMain.dart';

import 'package:mma_mse/equipment/PageMode.dart';

class tensile_test extends StatefulWidget {
  tensile_test({Key key}) : super(key: key);

  @override
  _tensile_testState createState() => _tensile_testState();
}

class _tensile_testState extends State<tensile_test> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Universal Tensile Machine",
        warnNote:
            "\n•Safty Glass!  \n•Place the plastic shield \n•Make sure when placing a sample into the grips that only the person placing the sample into the grip is in control of the handset",
        instruction: utm_instruction(),
        backC: Colors.amber[50],
        img:
            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true",
        intro:
            "Tensile testing machine is used to test the tensile strength and compressive strength of materials. Which can record the loading and displacement. The data can be output and analysis in Excel.\n \nThere are three UTM in MSE: Which as load capacity of 50kN/10kN/30kN(Lloyds Tensile Tester) Choose appropriate load capacity based on the material and the size");
  }
}
