import 'package:flutter/material.dart';
import 'package:mma_mse/user_note.dart';
import 'package:url_launcher/url_launcher.dart';
import 'BackG.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/Instruction/icp_instruction/icpMain.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/equipment/Etching/acidProtocol.dart';
import 'package:mma_mse/equipment/Etching/acidSafyFinal.dart';

class ICP_OES_Main extends StatefulWidget {
  ICP_OES_Main({Key? key}) : super(key: key);

  @override
  _ICP_OES_MainState createState() => _ICP_OES_MainState();
}

class _ICP_OES_MainState extends State<ICP_OES_Main> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "ICP-OES",
      backC: Colors.red.shade100,
      instruction: icp_instruction(),
      extraIcon: FontAwesomeIcons.flask,
      extraPage: AcidSafty(),
      toolTip: "Gear Intro",
      warnNote: "•Ensure you pass the acid quiz before going further",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/ICP.png?raw=true",
      intro:
          "ICP-OES (Inductively coupled plasma - optical emission spectrometry) is a technique in which the composition of elements in (mostly water-dissolved) samples can be determined using plasma and a spectrometer. The technique has been commercially available since 1974 and thanks to its reliability, multi-element options and high throughput, it has become a widely applied in both routine research as in more specific analysis purposes.",
      theory: acidQuiz(),
    );
  }
}
