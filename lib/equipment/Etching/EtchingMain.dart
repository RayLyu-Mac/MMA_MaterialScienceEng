import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Etching/EtchingMain.dart';
import 'acidProtocol.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AcidSafty/AcidMain.dart';

class Etching extends StatefulWidget {
  final String? location;
  final String? emailTo;
  Etching(
      {Key? key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _EtchingState createState() => _EtchingState();
}

class _EtchingState extends State<Etching> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Etching",
      backC: Colors.red.shade100,
      instruction: Etchinginstruction(),
      extraIcon: FontAwesomeIcons.flask,
      extraPage: AcidSafty(),
      toolTip: "Gear Intro",
      warnNote: "•Ensure you pass the acid quiz before going further",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/eth.jpg?raw=true",
      intro:
          "Etching process which after the polishing process can remove the element between the gain and make the gain boundary clearer and more obvious which can make the sample much brighter in microscope level. ",
      theory: Aciddetail(),
    );
  }
}
