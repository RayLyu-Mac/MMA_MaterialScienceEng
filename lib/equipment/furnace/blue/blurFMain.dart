import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/furnace/blue/blueMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/safty/FireSafty/FireMain.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/phaseDMain.dart';

class BlueFurnace extends StatefulWidget {
  final String location;
  final String emailTo;
  BlueFurnace(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BlueFurnaceState createState() => _BlueFurnaceState();
}

class _BlueFurnaceState extends State<BlueFurnace> {
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
      title: "Blue Furnace",
      backC: Colors.red[50],
      instruction: BlueFurnaceInstr(),
      dash: true,
      extraIcon: FontAwesomeIcons.fire,
      extraPage: ExtingshSymbols(),
      toolTip: "Fire Safety",
      warnNote:
          "•Make sure the furnace is properly grounded and no loose wires are connected to furnace\n•Extra cautios need to be taken since material won't appear hot but can cause severe tissue damage\n•Must wear all protective equipment\n•If fire occues leave the room and contact technicians",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true",
      intro: "Needed",
      theory: PhaseDiag(),
    );
  }
}
