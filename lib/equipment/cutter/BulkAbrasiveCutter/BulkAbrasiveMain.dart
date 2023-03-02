import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/cutter/BulkAbrasiveCutter/backG.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BulkAbrasiveDashB.dart';
import 'package:mma_mse/Instruction/Cutter/AbrasiveCutter/cutterMain.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BulkAbrasive_Main extends StatefulWidget {
  final String? location;
  final String? emailTo;
  BulkAbrasive_Main({Key? key, this.location, this.emailTo}) : super(key: key);

  @override
  _BulkAbrasive_MainState createState() => _BulkAbrasive_MainState();
}

class _BulkAbrasive_MainState extends State<BulkAbrasive_Main> {
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
      title: "Auto-Bulk Abrasive Cutter",
      backC: Colors.green.shade100,
      instruction: BulkAbraCutterInstru(),
      dash: "Dashboard",
      fontSize: 46,
      extraIcon: FontAwesomeIcons.fan,
      extraPage: BulkAbrasiveCutter(),
      toolTip: "Gear Intro",
      warnNote:
          "•Ensure the sample is securely fastened \n•Ensure the cutting wheel is completely stopped before opening the canopy\n•Do not have the blade touching the sample prior to engaging the motor\n•Cut the sample slowly\n•Sample size should be smaller than 2 inches",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true",
      intro:
          "Cutters are used for cutting big samples into suitable sizes to be ready for further processing and analysis. The bulk abrasive cutter is used for big sample sectioning. If you are looking for small and delicate cutting please use",
      theory: automaticModeInterFaceButton(),
    );
  }
}
