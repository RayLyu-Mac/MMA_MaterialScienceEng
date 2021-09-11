import 'package:flutter/material.dart';

import 'MicroHardnessData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class MHTinstruction extends StatefulWidget {
  final video videoType;
  const MHTinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _MHTinstructionState createState() => _MHTinstructionState();
}

class _MHTinstructionState extends State<MHTinstruction> {
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
        name: "Micro-Hardness Tester",
        controller: controller);
  }
}
