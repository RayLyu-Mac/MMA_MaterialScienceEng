import 'package:flutter/material.dart';
import 'cutterData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/Instruction/InstructionMode.dart';

class BulkAbraCutterInstru extends StatefulWidget {
  final video videoType;
  const BulkAbraCutterInstru({Key key, this.videoType}) : super(key: key);

  @override
  _BulkAbraCutterInstruState createState() => _BulkAbraCutterInstruState();
}

class _BulkAbraCutterInstruState extends State<BulkAbraCutterInstru> {
  List _instructionList = List<video>();

  final ScrollController controller = ScrollController();
  List titles = [];

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
        name: "Bulk Abrasive Cutter",
        controller: controller);
  }
}
