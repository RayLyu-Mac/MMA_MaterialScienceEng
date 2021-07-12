import 'package:flutter/material.dart';
import 'package:mma_mse/Instruction/Microscope/Nikon/NikonMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class NikonMicro extends StatefulWidget {
  final String location;
  final String emailTo;
  NikonMicro(
      {Key key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

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
        backC: Colors.purple[50],
        img:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/NiKon.png?raw=true",
        intro:
            "Microscope which can help the zoom in the sample so that the sample can be observe the microstructure then doing the further analysis.  In MSE faculty, there are two microscope which are Nikon and Keyence microscope. \n \nBoth Keyence and Nikon Microscope perform same function");
  }
}
