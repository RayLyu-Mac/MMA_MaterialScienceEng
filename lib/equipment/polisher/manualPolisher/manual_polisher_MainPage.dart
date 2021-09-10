import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/polisher/manualPolisher/manual%20polisher%20dashboard.dart';

import 'package:mma_mse/Instruction/Polisher/manualPolisher/manualpolisherinstructionMain.dart';

import 'package:mma_mse/equipment/PageMode.dart';

class manual_polisher extends StatefulWidget {
  manual_polisher({Key key}) : super(key: key);

  @override
  _manual_polisherState createState() => _manual_polisherState();
}

class _manual_polisherState extends State<manual_polisher> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Manual Polisher",
      backC: Colors.blue[50],
      instruction: manual_polisher_instruction(),
      dash: "Dashboard",
      fontSize: 46,
      warnNote:
          "•Make sure you are familiar with the grinding protocol \n•The grinding paper used for different hardness \n•Please try the virtual dashboard",
      img:
          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
      intro:
          "Polishers are used to remove the mechanical damage from the surface of the sample such as notch and scratch. The mirror finished surface are required for the further observation and analysis. \nThere are three polishers in MSE faculty, which are automatic polisher, manual polisher and Buehler Manual Polisher. ",
      theory: manualPolisherDashBoard(),
    );
  }
}
