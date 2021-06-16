import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/CharpyImpact/charpyImpactMain.dart';
import 'charpyImpactBackG.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class charpy_test extends StatefulWidget {
  final String location;
  final String emailTo;
  charpy_test(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _charpy_testState createState() => _charpy_testState();
}

class _charpy_testState extends State<charpy_test> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Charpy Impact Tester",
        warnVido: "eS8gsOCzugY",
        instruction: RockWellinstruction(),
        theory: CharpyBackG(),
        img:
            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true",
        intro:
            "'Used to measure the relative toughness of a material, more specifically, the energy absorbed by a standard notched specimen while breaking under an impact load. Has been used as an economical quality control method to determine the notch sensitivity. The standard size for specimen: 55 mm *10 mm* 10mm, having a notch machined across one of the larger dimensions.'");
  }
}
