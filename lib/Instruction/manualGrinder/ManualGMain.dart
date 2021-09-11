import 'package:flutter/material.dart';

import 'ManualGData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class ManualGrinderinstruction extends StatefulWidget {
  final video videoType;
  const ManualGrinderinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _ManualGrinderinstructionState createState() =>
      _ManualGrinderinstructionState();
}

class _ManualGrinderinstructionState extends State<ManualGrinderinstruction> {
  List _instructionList = List<video>();

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _instructionList = video().videoList();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Manual Grinder",
        controller: controller);
  }
}
