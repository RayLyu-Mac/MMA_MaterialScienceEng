import 'package:flutter/material.dart';

import 'buePolisherData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class BehPolisherInstru extends StatefulWidget {
  const BehPolisherInstru({Key? key, this.videoType}) : super(key: key);

  @override
  _BehPolisherInstruState createState() => _BehPolisherInstruState();
}

class _BehPolisherInstruState extends State<BehPolisherInstru> {
  List _instructionList = burpoli;

  final ScrollController controller = ScrollController();
  List titles = [];

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
        name: "Buehler Manual-Polisher",
        controller: controller);
  }
}
