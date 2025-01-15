import 'package:flutter/material.dart';
import 'backG.dart';
import 'package:mma_mse/Instruction/Cutter/PrecisionCutter/PCutterMain.dart';
import 'PrecutterDashB.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PcutterMain extends StatefulWidget {
  PcutterMain(
      {Key? key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String? location;
  final String? emailTo;

  @override
  _PcutterMainState createState() => _PcutterMainState();
}

class _PcutterMainState extends State<PcutterMain> {
  final Uri _url = Uri.parse('https://your-pdf-url.com');

  Future<void> _launchURL() async {
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

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
      backC: Colors.green.shade100,
      instruction: PCutterinstruction(),
      dash: "Dashboard",
      extraIcon: FontAwesomeIcons.fan,
      extraPage: precisionBlade(),
      fontSize: 44,
      toolTip: "Gear Intro",
      warnNote:
          "When using the Precision Cutter although there is a safety shield; safety glasses are required.\nPlease be familiar with the parameter you are going to set",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true",
      intro:
          "Cutters is used for cutting big sample into suitable size, and ready for the further processing and analysis.\nThe precision cutter is used for small and delicate cut, if you are looking for sectioning machine for bigger sample please use abrasive cutter",
      theory: PrecisonCutterDashB(),
    );
  }
}
