import 'package:flutter/material.dart';

import 'struesData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class struesinstruction extends StatefulWidget {
  const struesinstruction({Key key}) : super(key: key);

  @override
  _struesinstructionState createState() => _struesinstructionState();
}

class _struesinstructionState extends State<struesinstruction> {
  List _instructionList = struesData;

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
        name: "Mounting Press (Struers)",
        controller: controller);
  }
}
