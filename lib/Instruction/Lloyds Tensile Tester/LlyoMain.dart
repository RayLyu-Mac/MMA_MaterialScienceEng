import 'package:flutter/material.dart';

import 'LlyoData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class LlyoTensileinstruction extends StatefulWidget {
  const LlyoTensileinstruction({Key? key}) : super(key: key);

  @override
  _LlyoTensileinstructionState createState() => _LlyoTensileinstructionState();
}

class _LlyoTensileinstructionState extends State<LlyoTensileinstruction> {
  List _instructionList = llyoldTensile;

  final ScrollController controller = ScrollController();
  List titles = [];

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
        name: "Llyods Tensile Tester",
        controller: controller);
  }
}
