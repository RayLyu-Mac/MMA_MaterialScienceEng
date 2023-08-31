import 'package:flutter/material.dart';
import 'EtchingData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class Etchinginstruction extends StatefulWidget {
  const Etchinginstruction({Key key}) : super(key: key);

  @override
  _EtchinginstructionState createState() => _EtchinginstructionState();
}

class _EtchinginstructionState extends State<Etchinginstruction> {
  List _instructionList = etchingData;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Etching",
        controller: controller);
  }
}
