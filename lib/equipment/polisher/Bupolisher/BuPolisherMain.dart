import 'package:flutter/material.dart';

import 'package:mma_mse/Instruction/Polisher/buehlerPolisher/buePolisherMian.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class BuehlerPolisherMain extends StatefulWidget {
  final String location;
  final String emailTo;
  BuehlerPolisherMain(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BuehlerPolisherMainState createState() => _BuehlerPolisherMainState();
}

class _BuehlerPolisherMainState extends State<BuehlerPolisherMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Buehler Manual Polisher",
      backC: Colors.blue[50],
      instruction: BehPolisherInstru(),
      dash: "Dashboard",
      fontSize: 46,
      warnNote:
          "•Securely hold the sample as it could become a projectile if the polishing wheel catches the sample.",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true",
      intro:
          "Polishers are used to remove the mechanical damage from the surface of the sample such as notch and scratch. The mirror finished surface are required for the further observation and analysis. \nThere are three polishers in MSE faculty, which are automatic polisher, manual polisher and Buehler Manual Polisher. ",
      theory: BehPolisherInstru(),
    );
  }
}
