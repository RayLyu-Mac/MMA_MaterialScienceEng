import 'package:flutter/material.dart';

import 'EcoPressData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class EcoPressinstruction extends StatefulWidget {
  final video videoType;
  const EcoPressinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _EcoPressinstructionState createState() => _EcoPressinstructionState();
}

class _EcoPressinstructionState extends State<EcoPressinstruction> {
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
        name: "Mounting Press ECOPRESS 200",
        controller: controller);
  }
}
