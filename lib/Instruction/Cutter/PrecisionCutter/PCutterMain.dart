import 'package:flutter/material.dart';

import 'PCutterData.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class PCutterinstruction extends StatefulWidget {
  const PCutterinstruction({Key? key}) : super(key: key);

  @override
  _PCutterinstructionState createState() => _PCutterinstructionState();
}

class _PCutterinstructionState extends State<PCutterinstruction> {
  List _instructionList = precCutter;

  final ScrollController controller = ScrollController();
  List titles = [];

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Precision Cutter",
        controller: controller);
  }
}
