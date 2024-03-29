import 'package:flutter/material.dart';
import 'cutterData.dart';
import 'package:mma_mse/Instruction/InstructionMode.dart';

class BulkAbraCutterInstru extends StatefulWidget {
  const BulkAbraCutterInstru({Key? key}) : super(key: key);

  @override
  _BulkAbraCutterInstruState createState() => _BulkAbraCutterInstruState();
}

class _BulkAbraCutterInstruState extends State<BulkAbraCutterInstru> {
  List _instructionList = abraCutter;

  final ScrollController controller = ScrollController();
  List titles = [];

  @override
  Widget build(BuildContext context) {
    return InstructionMode(
        instructionList: _instructionList,
        name: "Bulk Abrasive Cutter",
        controller: controller);
  }
}
