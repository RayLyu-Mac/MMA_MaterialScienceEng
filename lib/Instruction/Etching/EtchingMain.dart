import 'package:flutter/material.dart';
import 'EtchingData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class Etchinginstruction extends StatefulWidget {
  final video videoType;
  const Etchinginstruction({Key key, this.videoType}) : super(key: key);

  @override
  _EtchinginstructionState createState() => _EtchinginstructionState();
}

class _EtchinginstructionState extends State<Etchinginstruction> {
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
        name: "Etching",
        controller: controller);
  }
}
