import 'package:flutter/material.dart';

// import '../abrasive_cutter/cutterData.dart';
import 'manual_polisher_data.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

// ignore: camel_case_types
class manual_polisher_instruction extends StatefulWidget {
  const manual_polisher_instruction({Key key}) : super(key: key);

  @override
  _manual_polisher_instructionState createState() =>
      _manual_polisher_instructionState();
}

class _manual_polisher_instructionState
    extends State<manual_polisher_instruction> {
  List _instructionList = manualPoli;

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
        name: "Manual Polisher",
        controller: controller);
  }
}
