import 'package:flutter/material.dart';

import 'MetData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class METinstruction extends StatefulWidget {
  final video videoType;
  const METinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _METinstructionState createState() => _METinstructionState();
}

class _METinstructionState extends State<METinstruction> {
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
        name: "Mounting Press (METLAB)",
        controller: controller);
  }
}
