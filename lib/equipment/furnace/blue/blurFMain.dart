import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/furnace/blue/blueMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/safty/FireSafty/FireMain.dart';
import 'package:mma_mse/Search/tools/phaseDiagram/phaseDMain.dart';

class BlueFurnace extends StatefulWidget {
  final String? location;
  final String? emailTo;
  final bool? ori;
  BlueFurnace(
      {Key? key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.ori,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _BlueFurnaceState createState() => _BlueFurnaceState();
}

class _BlueFurnaceState extends State<BlueFurnace> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Blue Furnace",
      oritation: widget.ori,
      backC: Colors.red.shade100,
      instruction: BlueFurnaceInstr(),
      extraIcon: FontAwesomeIcons.fire,
      extraPage: ExtingshSymbols(),
      toolTip: "Fire Safety",
      warnNote:
          "•Make sure the furnace is properly grounded and no loose wires are connected to the furnace\n•Extra caution is required because the material won't appear hot but can cause severe tissue damage\n•Must wear all protective equipment\n•If fire occurs leave the room and contact technicians",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true",
      intro:
          "The furnace is used to heat the sample in order to change the microstructure of the samples. During the cooling down process, changing the cooling rate can produce  a sample with different microstructure and characteristics. The SiC Furnace has the maximum temp of 1450 C. The maximum temp for the Blue Furnace is 1000 C. Please choose the appropriate furnace for your experiment",
      theory: PhaseDiag(),
    );
  }
}
