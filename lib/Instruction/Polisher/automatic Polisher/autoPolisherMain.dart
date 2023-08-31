import 'package:flutter/material.dart';

import 'autoPolisherData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class AutoPolisherinstruction extends StatefulWidget {
  const AutoPolisherinstruction({Key? key}) : super(key: key);

  @override
  _AutoPolisherinstructionState createState() =>
      _AutoPolisherinstructionState();
}

class _AutoPolisherinstructionState extends State<AutoPolisherinstruction> {
  List _instructionList = autoPoli;

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
        name: "Automatic Polisher",
        controller: controller);
  }
}
