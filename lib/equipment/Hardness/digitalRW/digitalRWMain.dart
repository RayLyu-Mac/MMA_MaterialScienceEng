import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/tools/HardnessConv/Data.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class DigitalRWMain extends StatefulWidget {
  DigitalRWMain(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;
  @override
  _DigitalRWMainState createState() => _DigitalRWMainState();
}

class _DigitalRWMainState extends State<DigitalRWMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Digital Rockwell Hardness Tester",
        warnVido: "gPepaJjjSRg",
        extraIcon: FontAwesomeIcons.fileCsv,
        extraPage: hardnessData(),
        toolTip: "Hardness Conversion Sheet",
        instruction: DigitalRWMain(),
        backC: Colors.blueGrey[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true",
        intro:
            "The hardness tester is used to measure the penetration resistance ability of material. Hardness test is do not have strict requirement in sharp and size. But the result of hardness test may vary depend on different format.\nFor digital tester you can read the hardness number from the display directly, you can change the number to preferred one by using the button below");
  }
}
