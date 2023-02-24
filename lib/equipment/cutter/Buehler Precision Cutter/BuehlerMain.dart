import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Cutter/BuehlerCutter/BcutterMain.dart';
import 'DashBorad.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class BuehlerCutterMain extends StatefulWidget {
  BuehlerCutterMain(
      {Key? key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String? location;
  final String? emailTo;
  @override
  _BuehlerCutterMainState createState() => _BuehlerCutterMainState();
}

class _BuehlerCutterMainState extends State<BuehlerCutterMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Buehler Precision Cutter",
      backC: Colors.green.shade100,
      instruction: BuehlerCutterInstru(),
      dash: "Dashboard",
      fontSize: 44,
      warnNote:
          "When using the Precision Cutter although there is a safety shield; safety glasses are required.\nPlease be familiar with the parameter you are going to set",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bcutter.jpg?raw=true",
      intro:
          "Cutters is used for cutting big sample into suitable size, and ready for the further processing and analysis.\n\nThe Buehler precision cutter is used for small and delicate cut, if you are looking for sectioning machine for bigger sample please use abrasive cutter",
      theory: BueDashBoard(),
    );
  }
}
