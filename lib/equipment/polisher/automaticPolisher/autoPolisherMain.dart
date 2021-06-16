import 'package:flutter/material.dart';
import 'AutoPolisherDashBoard.dart';
import 'package:mma_mse/Instruction/Polisher/automatic%20Polisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/PageMode.dart';

class AutoPolisherMain extends StatefulWidget {
  final String location;
  final String emailTo;
  AutoPolisherMain(
      {Key key,
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
      backC: Colors.blue[50],
      instruction: AutoPolisherinstruction(),
      dash: true,
      warnNote:
          "•Make sure you are familiar with the grinding protocol \n•The grinding paper used for different hardness \n•Please try the virtual dashboard",
      img:
          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true",
      intro: "Needed",
      theory: autoPolishDashBoard(),
    );
  }
}
