import 'digiRWData.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class DigiRWInstr extends StatefulWidget {
  final video videoType;
  const DigiRWInstr({Key key, this.videoType}) : super(key: key);

  @override
  _DigiRWInstrState createState() => _DigiRWInstrState();
}

class _DigiRWInstrState extends State<DigiRWInstr> {
  List _instructionList = List<video>();

  final ScrollController controller = ScrollController();
  List titles = [];

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
        name: "Digital RockWell Tester",
        controller: controller);
  }
}
