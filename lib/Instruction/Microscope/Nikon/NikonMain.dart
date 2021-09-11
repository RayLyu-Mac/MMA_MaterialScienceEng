import 'package:flutter/material.dart';

import 'NikonData.dart';
import 'package:flutter/services.dart';

import 'package:mma_mse/Instruction/InstructionMode.dart';

class NikonMicroInstru extends StatefulWidget {
  final video videoType;
  const NikonMicroInstru({Key key, this.videoType}) : super(key: key);

  @override
  _NikonMicroInstruState createState() => _NikonMicroInstruState();
}

class _NikonMicroInstruState extends State<NikonMicroInstru> {
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
        name: "Nikon Microscope",
        controller: controller);
  }
}
