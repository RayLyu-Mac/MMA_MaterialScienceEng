import 'package:flutter/material.dart';

import 'EcoPressData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class EcoPressinstruction extends StatefulWidget {
  const EcoPressinstruction({Key? key}) : super(key: key);

  @override
  _EcoPressinstructionState createState() => _EcoPressinstructionState();
}

class _EcoPressinstructionState extends State<EcoPressinstruction> {
  List _instructionList = EcoPress;

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Mounting Press ECOPRESS 200",
        controller: controller);
  }
}
