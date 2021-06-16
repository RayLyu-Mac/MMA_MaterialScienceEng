import 'package:flutter/material.dart';

import 'package:mma_mse/Instruction/MountPress/MetPress 200/MetMain.dart';
import 'package:mma_mse/equipment/MountPress/backGround.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class METPress extends StatefulWidget {
  METPress(
      {Key key,
      @optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.location})
      : super(key: key);
  final String location;
  final String emailTo;
  @override
  _METPressState createState() => _METPressState();
}

class _METPressState extends State<METPress> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Mounting Press MET Lab",
        warnNote:
            "Please be familiar with:\n•The essential material needed for pressing: funnel and resin\n•Choose the proper clip holders",
        instruction: METinstruction(),
        theory: mountPressBackG(),
        backC: Colors.indigo[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true",
        intro: "Needed");
  }
}
