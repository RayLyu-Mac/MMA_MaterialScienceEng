import 'package:flutter/material.dart';

import 'MMicroHardData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class ManualMicHardnessInstru extends StatefulWidget {
  const ManualMicHardnessInstru({Key? key}) : super(key: key);

  @override
  _ManualMicHardnessInstruState createState() =>
      _ManualMicHardnessInstruState();
}

class _ManualMicHardnessInstruState extends State<ManualMicHardnessInstru> {
  List _instructionList = manualMicroHardnessData;

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
        name: "Micro-Hardness Tester",
        controller: controller);
  }
}
