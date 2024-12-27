import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';

class autoPolishDashBoard extends StatefulWidget {
  autoPolishDashBoard({Key? key}) : super(key: key);

  @override
  _autoPolishDashBoardState createState() => _autoPolishDashBoardState();
}

class _autoPolishDashBoardState extends State<autoPolishDashBoard> {
  double _screenWidth = 0;
  double _screenH = 0;
  double firstLine = 9.5;
  double secondLine = 4.7;
  double thirdLine = 2.5;
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
        title: Text("Automatic Polsiher Dash Board"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 13,
              left: _screenWidth / 8,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.3, height: _screenH / 1.4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(4, 4), color: Colors.grey.shade400)
                  ],
                ),
              )),
          DashButton(
              buttonName: "F1",
              cardColor: Colors.green.shade400.withOpacity(0.9),
              instruction:
                  "F1: \n•Edit Mode: Copy Step \n•Run Mode: Previous Step",
              left: _screenWidth / 6,
              stepTitle: "F Keys Static Options Differs in Run and Edit Mode",
              top: _screenH / firstLine),
          DashButton(
              buttonName: "F2",
              cardColor: Colors.green.shade400.withOpacity(0.9),
              instruction:
                  "F2: \n•Edit Mode: Insert Step \n•Run Mode: Next Step",
              left: _screenWidth / 2.9,
              stepTitle: "F Keys Static Options Differs in Run and Edit Mode",
              top: _screenH / firstLine),
          DashButton(
              buttonName: "F3",
              cardColor: Colors.green.shade400.withOpacity(0.9),
              instruction: "F3: \n•Edit Mode: Delete Step \n•Run Mode: None",
              left: _screenWidth / 1.9,
              stepTitle: "F Keys Static Options Differs in Run and Edit Mode",
              top: _screenH / firstLine),
          DashButton(
              buttonName: "F4",
              cardColor: Colors.green.shade400.withOpacity(0.9),
              instruction:
                  "F4: \n•Edit Mode: Save Function \n•Run Mode: Save Function",
              left: _screenWidth / 1.4,
              stepTitle: "F Keys Static Options Differs in Run and Edit Mode",
              top: _screenH / firstLine),
          DashButton(
              button_icon: Icon(Icons.refresh),
              cardColor: Colors.orange.shade400.withOpacity(0.9),
              instruction:
                  "Base Rotation: \n•Press Once and the base will turn on \n•Press and hold will increase RPM to maximum",
              left: _screenWidth / 6,
              stepTitle: "Orange Interface Button",
              top: _screenH / secondLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.handHoldingWater),
              cardColor: Colors.orange.shade400.withOpacity(0.9),
              instruction: "Water: \n•Turns on the water On/Off",
              left: _screenWidth / 2.9,
              stepTitle: "Orange Interface Button",
              top: _screenH / secondLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.sprayCan),
              cardColor: Colors.orange.shade400.withOpacity(0.9),
              instruction:
                  "Diamond Spray: \n•Press and hold will dispense the diamond suspension from the bottle",
              left: _screenWidth / 1.9,
              stepTitle: "Orange Interface Button",
              top: _screenH / secondLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.water),
              cardColor: Colors.orange.shade400.withOpacity(0.9),
              instruction:
                  "Lubricant Spray: \n•Hold will dispense the lubricant from the bottle",
              left: _screenWidth / 1.4,
              stepTitle: "Orange Interface Button",
              top: _screenH / secondLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.fastForward),
              cardColor: Colors.yellow.shade400.withOpacity(0.9),
              instruction:
                  "Double Arrow Left: \n•when pressed and held will move the head to left",
              left: _screenWidth / 6,
              stepTitle: "Yellow Interface Button",
              top: _screenH / thirdLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.fastBackward),
              cardColor: Colors.yellow.shade400.withOpacity(0.9),
              instruction:
                  "Double Arrow Right: \n•when pressed and held will move the head to right",
              left: _screenWidth / 2.9,
              stepTitle: "Yellow Interface Button",
              top: _screenH / thirdLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.arrowAltCircleUp),
              cardColor: Colors.yellow.shade400.withOpacity(0.9),
              instruction:
                  "Up and Down Arrow: \n•Pressed to move head up or down",
              left: _screenWidth / 6,
              stepTitle: "Yellow Interface Button",
              top: _screenH / thirdLine + _screenH / 12),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.circle),
              cardColor: Colors.yellow.shade400.withOpacity(0.9),
              instruction:
                  "Arrow in Cirucle: \n•On pressed to rotate head 180 degree",
              left: _screenWidth / 2.9,
              stepTitle: "Yellow Interface Button",
              top: _screenH / thirdLine + _screenH / 12),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.exclamationTriangle),
              cardColor: Colors.green.shade600.withOpacity(0.9),
              instruction:
                  "Proceed Button: \n•Press proceed button will begin the program",
              left: _screenWidth / 1.5,
              stepTitle: "Green Proceed Button",
              top: _screenH / thirdLine),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.dotCircle),
              cardColor: Colors.red.shade400.withOpacity(0.9),
              instruction: "Stop: \n•Press stop button will stop the process",
              left: _screenWidth / 1.5,
              stepTitle: "Red Stop Button",
              top: _screenH / thirdLine + _screenH / 12),
          DashButton(
              button_icon: Icon(Icons.exit_to_app),
              cardColor: Colors.pink.shade400.withOpacity(0.9),
              instruction: "When Pressed backs you out of a sub menu",
              left: _screenWidth / 6,
              stepTitle: "Esc Key",
              top: _screenH / thirdLine + _screenH / 5),
          DashButton(
              button_icon: Icon(FontAwesomeIcons.ethernet),
              cardColor: Colors.white.withOpacity(0.9),
              instruction:
                  "Dial: \n•Rotate either clock wise or counter clock wise will high light which ever menu\n•Press the dial will take you into a sub menu",
              left: _screenWidth / 2,
              stepTitle: "Black Pusg Dial",
              top: _screenH / thirdLine + _screenH / 5),
        ],
      ),
    );
  }
}
