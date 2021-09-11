import 'package:flutter/material.dart';
import 'manualRWData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class ManualRWInstr extends StatefulWidget {
  final video videoType;
  const ManualRWInstr({Key key, this.videoType}) : super(key: key);

  @override
  _ManualRWInstrState createState() => _ManualRWInstrState();
}

class _ManualRWInstrState extends State<ManualRWInstr> {
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
        name: "Manual RockWell Tester",
        controller: controller);
  }
}
