import 'package:flutter/material.dart';
import 'backG.dart';
import 'package:mma_mse/Instruction/Cutter/PrecisionCutter/PCutterMain.dart';
import 'PrecutterDashB.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PcutterMain extends StatefulWidget {
  PcutterMain(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;

  @override
  _PcutterMainState createState() => _PcutterMainState();
}

class _PcutterMainState extends State<PcutterMain> {
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
    return EqubPageMode(
      title: "Precision Cutter",
      backC: Colors.green[50],
      instruction: PCutterinstruction(),
      dash: true,
      extraIcon: FontAwesomeIcons.fan,
      extraPage: precisionBlade(),
      toolTip: "Gear Intro",
      warnVido: "gPepaJjjSRg",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true",
      intro:
          "The precision cutter is used for small and delicate cut, if you are looking for sectioning machine for bigger sample please use abrasive cutter",
      theory: PrecisonCutterDashB(),
    );
  }
}
