import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/cutter/BulkAbrasiveCutter/backG.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BulkAbrasiveDashB.dart';
import 'package:mma_mse/Instruction/Cutter/AbrasiveCutter/cutterMain.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BulkAbrasive_Main extends StatefulWidget {
  final String location;
  final String emailTo;
  BulkAbrasive_Main(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BulkAbrasive_MainState createState() => _BulkAbrasive_MainState();
}

class _BulkAbrasive_MainState extends State<BulkAbrasive_Main> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
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
      title: "Bulk Abrasive Cutter",
      backC: Colors.green[50],
      instruction: BulkAbraCutterInstru(),
      dash: true,
      extraIcon: FontAwesomeIcons.fantasyFlightGames,
      extraPage: BulkAbrasiveCutter(),
      warnNote:
          "•Ensure the sample is securely fastened \n•Cutting wheel is completely stoped before opening the canopy\n•Do not have the blade the touching the sample prior engaging the motor\n•Cut the sample slowly\n•Sample size should be smaller than 2 inches",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/abc.jpg?raw=true",
      intro: "Needed",
      theory: automaticModeInterFaceButton(),
    );
  }
}

_launchURL() async {
  const url = 'https://msebooking.mcmaster.ca/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
