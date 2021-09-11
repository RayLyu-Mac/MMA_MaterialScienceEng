import 'package:flutter/material.dart';

import 'struesData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class struesinstruction extends StatefulWidget {
  final video videoType;
  const struesinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _struesinstructionState createState() => _struesinstructionState();
}

class _struesinstructionState extends State<struesinstruction> {
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
        name: "Mounting Press (Struers)",
        controller: controller);
  }
}
