import 'package:flutter/material.dart';

import 'package:mma_mse/Instruction/MountPress/struers/struesMain.dart';
import 'package:mma_mse/equipment/MountPress/backGround.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class StruesMain extends StatefulWidget {
  StruesMain({Key? key, this.emailTo, this.location}) : super(key: key);
  final String? location;
  final String? emailTo;
  @override
  _StruesMainState createState() => _StruesMainState();
}

class _StruesMainState extends State<StruesMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Mounting Press Strues",
        warnNote:
            "Please be familiar with:\n•The essential material needed for pressing: funnel and resin\n•Choose the proper clip holders",
        instruction: struesinstruction(),
        theory: mountPressBackG(),
        fontSize: 46,
        backC: Colors.indigo.shade100,
        dash: "Component & Tools",
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/stru.jpg?raw=true",
        intro:
            "The Mounting Press is used to embed the metallurgical sample in Bakelite (Phenolic Resin), which can mount the sample firmly and easier for further process. \nThere are three types mount press in MSE faculty which are Mounting Press MET Lab, Mounting Press Eco 200 and Mounting Press Strues.");
  }
}
