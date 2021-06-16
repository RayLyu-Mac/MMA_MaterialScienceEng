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
      dash: true,
      warnNote:
          "•Securely hold the sample as it could become a projectile if the polishing wheel catches the sample.",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bmaPolisher.jpg?raw=true",
      intro: "Needed",
      theory: BehPolisherInstru(),
    );
  }
}
