import 'package:flutter/material.dart';

import 'SiCData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class SiCFurnaceInstr extends StatefulWidget {
  final video videoType;
  const SiCFurnaceInstr({Key key, this.videoType}) : super(key: key);

  @override
  _SiCFurnaceInstrState createState() => _SiCFurnaceInstrState();
}

class _SiCFurnaceInstrState extends State<SiCFurnaceInstr> {
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
        name: "SiC Furnace",
        controller: controller);
  }
}
