import 'package:flutter/material.dart';

import 'blueData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class BlueFurnaceInstr extends StatefulWidget {
  const BlueFurnaceInstr({Key? key}) : super(key: key);

  @override
  _BlueFurnaceInstrState createState() => _BlueFurnaceInstrState();
}

class _BlueFurnaceInstrState extends State<BlueFurnaceInstr> {
  List _instructionList = blueFdata;

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Blue Furnace",
        controller: controller);
  }
}
