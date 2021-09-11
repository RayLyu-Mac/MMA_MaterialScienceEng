import 'package:flutter/material.dart';

import 'keyenceData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class KeyenceMicroInstru extends StatefulWidget {
  final video videoType;
  const KeyenceMicroInstru({Key key, this.videoType}) : super(key: key);

  @override
  _KeyenceMicroInstruState createState() => _KeyenceMicroInstruState();
}

class _KeyenceMicroInstruState extends State<KeyenceMicroInstru> {
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
        name: "Keyence MicroScope",
        controller: controller);
  }
}
