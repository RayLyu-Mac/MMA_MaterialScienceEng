import 'package:flutter/material.dart';

import 'package:mma_mse/Instruction/Microscope/Keyence/keyenceMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class KeyenceMMain extends StatefulWidget {
  KeyenceMMain({Key? key}) : super(key: key);

  @override
  _KeyenceMMainState createState() => _KeyenceMMainState();
}

class _KeyenceMMainState extends State<KeyenceMMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Keyence Microscope",
        warnNote:
            "•Make sure the samples used have been properly polished and etched",
        instruction: KeyenceMicroInstru(),
        backC: Colors.purple.shade100,
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Keyence.png?raw=true",
        intro:
            "Microscope which can zoom in the sample so that the microstructure can be observed when doing further analysis. In MSE faculty, there are two microscopes, Nikon and Keyence microscope.\nBoth Keyence and Nikon Microscope perform the same function.");
  }
}
