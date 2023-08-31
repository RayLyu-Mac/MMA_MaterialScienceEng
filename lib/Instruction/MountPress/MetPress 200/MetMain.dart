import 'package:flutter/material.dart';

import 'MetData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class METinstruction extends StatefulWidget {
  const METinstruction({Key key}) : super(key: key);

  @override
  _METinstructionState createState() => _METinstructionState();
}

class _METinstructionState extends State<METinstruction> {
  List _instructionList = metPress;

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
        name: "Mounting Press (METLAB)",
        controller: controller);
  }
}
