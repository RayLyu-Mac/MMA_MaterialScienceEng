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
            "A universal testing machine (UTM), also known as a universal tester,[1] materials testing machine or materials test frame, is used to test the tensile strength and compressive strength of materials. An earlier name for a tensile testing machine is a tensometer. The universal part of the name reflects that it can perform many standard tensile and compression tests on materials, components, and structures (in other words, that it is versatile).\n \nThere are three UTM in MSE: Which as load capacity of 50kN/10kN/30kN(Lloyds Tensile Tester) Choose appropriate load capacity based on the material and the size");
  }
}
