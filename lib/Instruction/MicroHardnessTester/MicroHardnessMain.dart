import 'package:flutter/material.dart';

import 'MicroHardnessData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class MHTinstruction extends StatefulWidget {
  const MHTinstruction({Key key}) : super(key: key);

  @override
  _MHTinstructionState createState() => _MHTinstructionState();
}

class _MHTinstructionState extends State<MHTinstruction> {
  List _instructionList = microHardnessData;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Micro-Hardness Tester",
        controller: controller);
  }
}
