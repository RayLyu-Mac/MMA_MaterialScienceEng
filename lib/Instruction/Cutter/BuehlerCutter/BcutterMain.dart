import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BcutterData.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class BuehlerCutterInstru extends StatefulWidget {
  const BuehlerCutterInstru({Key? key}) : super(key: key);

  @override
  _BuehlerCutterInstruState createState() => _BuehlerCutterInstruState();
}

class _BuehlerCutterInstruState extends State<BuehlerCutterInstru> {
  List _instructionList = bueCutterData;
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
      instructionList: _instructionList,
      name: "Buehler Precision Cutter",
      controller: controller,
    );
  }
}
