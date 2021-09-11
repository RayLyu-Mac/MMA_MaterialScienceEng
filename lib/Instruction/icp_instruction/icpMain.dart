import 'package:flutter/material.dart';

import 'icp_data.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class icp_instruction extends StatefulWidget {
  final video videoType;
  const icp_instruction({Key key, this.videoType}) : super(key: key);

  @override
  _icp_instructionState createState() => _icp_instructionState();
}

class _icp_instructionState extends State<icp_instruction> {
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
        name: "ICP-OES",
        controller: controller);
  }
}
