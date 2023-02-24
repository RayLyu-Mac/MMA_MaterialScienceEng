import 'package:flutter/material.dart';

import 'keyenceData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class KeyenceMicroInstru extends StatefulWidget {
  const KeyenceMicroInstru({Key? key}) : super(key: key);

  @override
  _KeyenceMicroInstruState createState() => _KeyenceMicroInstruState();
}

class _KeyenceMicroInstruState extends State<KeyenceMicroInstru> {
  List _instructionList = keyenceData;

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
        name: "Keyence MicroScope",
        controller: controller);
  }
}
