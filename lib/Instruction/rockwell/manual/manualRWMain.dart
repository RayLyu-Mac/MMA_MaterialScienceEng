import 'package:flutter/material.dart';
import 'manualRWData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class ManualRWInstr extends StatefulWidget {
  const ManualRWInstr({
    Key key,
  }) : super(key: key);

  @override
  _ManualRWInstrState createState() => _ManualRWInstrState();
}

class _ManualRWInstrState extends State<ManualRWInstr> {
  List _instructionList = manualRWData;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Manual RockWell Tester",
        controller: controller);
  }
}
