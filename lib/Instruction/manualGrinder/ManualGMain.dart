import 'package:flutter/material.dart';

import 'ManualGData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class ManualGrinderinstruction extends StatefulWidget {
  const ManualGrinderinstruction({
    Key key,
  }) : super(key: key);

  @override
  _ManualGrinderinstructionState createState() =>
      _ManualGrinderinstructionState();
}

class _ManualGrinderinstructionState extends State<ManualGrinderinstruction> {
  List _instructionList = manualGrinderData;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Manual Grinder",
        controller: controller);
  }
}
