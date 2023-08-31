import 'package:flutter/material.dart';

import 'utm_data.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class utm_instruction extends StatefulWidget {
  const utm_instruction({
    Key? key,
  }) : super(key: key);

  @override
  _utm_instructionState createState() => _utm_instructionState();
}

class _utm_instructionState extends State<utm_instruction> {
  List _instructionList = utmData;

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
      name: "UTM",
      controller: controller,
    );
  }
}
