import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BcutterData.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class BuehlerCutterInstru extends StatefulWidget {
  final video videoType;
  const BuehlerCutterInstru({Key key, this.videoType}) : super(key: key);

  @override
  _BuehlerCutterInstruState createState() => _BuehlerCutterInstruState();
}

class _BuehlerCutterInstruState extends State<BuehlerCutterInstru> {
  List _instructionList = List<video>();

  void initState() {
    super.initState();
    _instructionList = video().videoList();
  }

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList, name: "Buehler Precision Cutter");
    ;
  }
}
