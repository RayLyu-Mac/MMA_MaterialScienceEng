import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Microscope/Nikon/NikonMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class NikonMicro extends StatefulWidget {
  final String? location;
  final String? emailTo;
  NikonMicro({Key? key, this.location, this.emailTo}) : super(key: key);

  @override
  _NikonMicroState createState() => _NikonMicroState();
}

class _NikonMicroState extends State<NikonMicro> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
        title: "Nikon Microscope",
        warnNote:
            "•Make Sure the smaples used have been properly polished and etched",
        instruction: NikonMicroInstru(),
        backC: Colors.purple.shade100,
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/NiKon.png?raw=true",
        intro:
            "Microscope which can zoom in the sample so that the microstructure can be observed when doing further analysis. In MSE faculty, there are two microscopes, Nikon and Keyence microscope.\nBoth Keyence and Nikon Microscope perform the same function.");
  }
}
