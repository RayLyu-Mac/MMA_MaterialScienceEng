import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';

class PrecisonCutterDashB extends StatefulWidget {
  PrecisonCutterDashB({Key key}) : super(key: key);

  @override
  _PrecisonCutterDashBState createState() => _PrecisonCutterDashBState();
}

class _PrecisonCutterDashBState extends State<PrecisonCutterDashB> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Precision Cutter Dash Board"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: Color(0xFF0E3311).withOpacity(0.2),
                child: Image(
                  fit: BoxFit.cover,
                  height: _screenH,
                  width: _screenWidth,
                  alignment: Alignment.center,
                  image: NetworkImage(
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true"),
                ),
              )),
          Positioned(
              top: _screenWidth / 40,
              left: _screenH / 15,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenH / 0.65, height: _screenWidth / 2.3),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white.withOpacity(0.4),
                    )),
              )),
          DashButton(
            cardColor: Colors.grey,
            left: _screenH / 13,
            top: _screenWidth / 25,
            height: _screenWidth / 5,
            width: _screenH / 1.8,
            stepTitle: "Display",
            instruction: "Display of the machine",
            buttonName: "Display",
            fontsize: _screenWidth / 40,
          ),
          DashButton(
            cardColor: Colors.green,
            left: _screenH / 13,
            top: _screenWidth / 3.8,
            fontsize: _screenWidth / 35,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Display",
            instruction: "Self-explanatory",
            buttonName: "F1",
          ),
          DashButton(
            cardColor: Colors.green,
            left: _screenH / 4.8,
            top: _screenWidth / 3.8,
            height: _screenWidth / 18,
            fontsize: _screenWidth / 35,
            width: _screenH / 8,
            stepTitle: "Display",
            instruction: "Self-explanatory",
            buttonName: "F2",
          ),
          DashButton(
            cardColor: Colors.green,
            left: _screenH / 2.9,
            top: _screenWidth / 3.8,
            height: _screenWidth / 18,
            fontsize: _screenWidth / 35,
            width: _screenH / 8,
            stepTitle: "Display",
            instruction: "Self-explanatory",
            buttonName: "F3",
          ),
          DashButton(
            cardColor: Colors.green,
            left: _screenH / 2.1,
            top: _screenWidth / 3.8,
            height: _screenWidth / 18,
            fontsize: _screenWidth / 35,
            width: _screenH / 8,
            stepTitle: "Display",
            instruction: "Self-explanatory",
            buttonName: "F4",
          ),
          DashButton(
            cardColor: Colors.blue,
            left: _screenH / 1.5,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            fontsize: _screenWidth / 35,
            width: _screenH / 8,
            stepTitle: "Up Page",
            instruction: "Increase distance or speed",
            button_icon: Icon(FontAwesomeIcons.sortAlphaUp),
          ),
          DashButton(
            cardColor: Colors.blue,
            left: _screenH / 1.5,
            top: _screenWidth / 5,
            fontsize: _screenWidth / 35,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Doen Page",
            instruction: "Decrease distance or speed",
            button_icon: Icon(FontAwesomeIcons.sortAlphaDown),
          ),
          DashButton(
            cardColor: Colors.pinkAccent,
            left: _screenH / 1.2,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            fontsize: _screenWidth / 35,
            width: _screenH / 8,
            stepTitle: "Esc key",
            instruction: "Back you out a sub menu",
            buttonName: "Esc",
          ),
          DashButton(
            cardColor: Colors.pinkAccent,
            left: _screenH / 1.2,
            top: _screenWidth / 5,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Enter button",
            instruction: "Go into a sub menu",
            button_icon: Icon(FontAwesomeIcons.arrowsAltH),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.99,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Double left arrow",
            instruction:
                "Two Functions:Move to the left \n•Fast Movement: Press and hold the button the sample will accelerate to the blade \n•Excalt Movement: short press the sample will move excalty 0.1mm",
            button_icon: Icon(FontAwesomeIcons.angleDoubleLeft),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.99,
            top: _screenWidth / 4.9,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Left arrow",
            instruction:
                "Two Functions: \n•Slow Movement: Press and hold the button the sample will accelerate to the blade \n•Excalt Movement: short press the sample will move excalty 0.005mm",
            button_icon: Icon(FontAwesomeIcons.arrowLeft),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.865,
            top: _screenWidth / 4.9,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Down Arrow",
            instruction: "Move sample away from the blade",
            button_icon: Icon(FontAwesomeIcons.arrowDown),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.865,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Up Arrow",
            instruction: "Move sample toward the blade",
            button_icon: Icon(FontAwesomeIcons.arrowUp),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.77,
            top: _screenWidth / 4.9,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Right Arrow",
            instruction:
                "Two Functions: \n•Slow Movement: Press and hold the button the sample will accelerate to the blade \n•Excalt Movement: short press the sample will move excalty 0.005mm",
            button_icon: Icon(FontAwesomeIcons.arrowRight),
          ),
          DashButton(
            cardColor: Colors.yellowAccent,
            left: _screenH / 0.77,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Double right arrow",
            instruction:
                "Two Functions:Move to right \n•Fast Movement: Press and hold the button the sample will accelerate to the blade \n•Excalt Movement: short press the sample will move excalty 0.1mm",
            button_icon: Icon(FontAwesomeIcons.angleDoubleRight),
          ),
          DashButton(
            cardColor: Colors.greenAccent,
            left: _screenH / 0.69,
            top: _screenWidth / 8,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Start",
            instruction: "Start the cutting process",
            button_icon: Icon(FontAwesomeIcons.disease),
          ),
          DashButton(
            cardColor: Colors.redAccent,
            left: _screenH / 0.69,
            top: _screenWidth / 4.9,
            height: _screenWidth / 18,
            width: _screenH / 8,
            stepTitle: "Stop",
            instruction: "Stop the cutting process",
            button_icon: Icon(FontAwesomeIcons.circleNotch),
          ),
        ],
      ),
    );
  }
}
