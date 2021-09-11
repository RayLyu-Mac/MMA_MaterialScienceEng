import 'package:flutter/material.dart';

import 'autoPolisherData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class AutoPolisherinstruction extends StatefulWidget {
  final video videoType;
  const AutoPolisherinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _AutoPolisherinstructionState createState() =>
      _AutoPolisherinstructionState();
}

class _AutoPolisherinstructionState extends State<AutoPolisherinstruction> {
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
        name: "Automatic Polisher",
        controller: controller);
  }
}
