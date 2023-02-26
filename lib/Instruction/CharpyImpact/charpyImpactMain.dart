import 'package:flutter/material.dart';

import 'charpyImpact.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class RockWellinstruction extends StatefulWidget {
  const RockWellinstruction({Key? key}) : super(key: key);

  @override
  _RockWellinstructionState createState() => _RockWellinstructionState();
}

class _RockWellinstructionState extends State<RockWellinstruction> {
  List _instructionList = charpyInst;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Charpy Impact Test",
        controller: controller);
  }
}
