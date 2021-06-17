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
            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/niko.jpg?raw=true",
        intro: "Both Keyence and Nikon Microscope perform same function");
  }
}
