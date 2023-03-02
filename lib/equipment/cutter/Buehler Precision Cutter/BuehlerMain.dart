import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Cutter/BuehlerCutter/BcutterMain.dart';
import 'DashBorad.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class BuehlerCutterMain extends StatefulWidget {
  BuehlerCutterMain({Key? key, this.emailTo, this.location}) : super(key: key);
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
          "Cutters are used for cutting big samples into suitable sizes to be ready for further processing and analysis. \nThe Buehler precision cutter is used for small and delicate cuts. If you are looking for  a sectioning machine for bigger samples, please use the abrasive cutter.",
      theory: BueDashBoard(),
    );
  }
}
