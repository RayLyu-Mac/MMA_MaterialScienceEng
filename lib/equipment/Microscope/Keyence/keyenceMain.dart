import 'package:flutter/material.dart';

import 'package:mma_mse/Instruction/Microscope/Keyence/keyenceMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class KeyenceMMain extends StatefulWidget {
  KeyenceMMain({Key key}) : super(key: key);

  @override
  _KeyenceMMainState createState() => _KeyenceMMainState();
}

class _KeyenceMMainState extends State<KeyenceMMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Keyence Microscope",
        warnNote:
            "•Make Sure the smaples used have been properly polished and etched",
        instruction: KeyenceMicroInstru(),
        backC: Colors.purple[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Keyence.png?raw=true",
        intro:
            "Microscope which can help the zoom in the sample so that the sample can be observe the microstructure then doing the further analysis.  In MSE faculty, there are two microscope which are Nikon and Keyence microscope.\n \nBoth Keyence and Nikon Microscope perform same function");
  }
}
