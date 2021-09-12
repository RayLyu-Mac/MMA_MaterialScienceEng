import 'package:flutter/material.dart';

import 'charpyImpact.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class RockWellinstruction extends StatefulWidget {
  final video videoType;
  const RockWellinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _RockWellinstructionState createState() => _RockWellinstructionState();
}

class _RockWellinstructionState extends State<RockWellinstruction> {
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
        name: "Charpy Impact Test",
        controller: controller);
  }
}
