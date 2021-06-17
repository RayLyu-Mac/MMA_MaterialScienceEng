import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Instruction/furnace/SiC/SiCMain.dart';
import 'package:mma_mse/Search/safty/FireSafty/FireMain.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/phaseDMain.dart';

class SiCFurnace extends StatefulWidget {
  final String location;
  final String emailTo;
  SiCFurnace(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _SiCFurnaceState createState() => _SiCFurnaceState();
}

class _SiCFurnaceState extends State<SiCFurnace> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Silicon Carbide Furnace",
      backC: Colors.red[50],
      instruction: SiCFurnaceInstr(),
      dash: true,
      extraIcon: FontAwesomeIcons.fire,
      extraPage: ExtingshSymbols(),
      toolTip: "Fire Safety",
      warnNote:
          "•If a fire occurs, follow the “McMaster University Fire Instructions” leave the room and contact a technical staff\n \n•if the fire is out of control engage the fire alarm for the building; and contact emergency response 88, then EOHSS at 24352, stay nearby to provide information to responders.\n \n•DO NOT TRY to extinguish the fire because of serious health hazard. \n \n•If you accidentally drop the sample on your self Don’t panic! Remain calm. Immediately go to the sink and rinse with cold water to try and reduce the burn, seek medical help.",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpg?raw=true",
      intro:
          "SiC Furnace has the maximum temp of 1450 C for Blur furnace the max temp is 1000 C \nPlease choose the appropriate furnace for your experiment",
      theory: PhaseDiag(),
    );
  }
}
