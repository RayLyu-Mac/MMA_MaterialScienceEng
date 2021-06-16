import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'backG.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
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
  double _screenWidth;
  double _screenH;
  double adjust;
  @override
  void didChangeDependencies() {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
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
      backC: Colors.green[50],
      instruction: PCutterinstruction(),
      dash: true,
      extraIcon: FontAwesomeIcons.fan,
      extraPage: precisionBlade(),
      toolTip: "Gear Intro",
      warnVido: "gPepaJjjSRg",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true",
      intro: "Needed",
      theory: PrecisonCutterDashB(),
    );
  }
}
