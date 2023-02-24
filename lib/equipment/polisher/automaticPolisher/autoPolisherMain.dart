import 'package:flutter/material.dart';
import 'AutoPolisherDashBoard.dart';
import 'package:mma_mse/Instruction/Polisher/automatic%20Polisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class AutoPolisherMain extends StatefulWidget {
  final String? location;
  final String? emailTo;
  AutoPolisherMain(
      {Key? key,
      @optionalTypeArgs this.location,
      @optionalTypeArgs this.emailTo})
      : super(key: key);

  @override
  _AutoPolisherMainState createState() => _AutoPolisherMainState();
}

class _AutoPolisherMainState extends State<AutoPolisherMain> {
  @override
  Widget build(BuildContext context) {
    return EqubPageMode(
      title: "Automatic Polisher",
      backC: Colors.blue.shade100,
      instruction: AutoPolisherinstruction(),
      dash: "Dashboard",
      fontSize: 46,
      warnNote:
          "•Make sure you are familiar with the grinding protocol \n•The grinding paper used for different hardness \n•Please try the virtual dashboard",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true",
      intro:
          "Polishers are used to remove the mechanical damage from the surface of the sample such as notch and scratch. The mirror finished surface are required for the further observation and analysis. \nThere are three polishers in MSE faculty, which are automatic polisher, manual polisher and Buehler Manual Polisher. ",
      theory: autoPolishDashBoard(),
    );
  }
}
