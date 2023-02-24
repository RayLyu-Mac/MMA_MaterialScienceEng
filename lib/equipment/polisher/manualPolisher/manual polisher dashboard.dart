import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';

class manualPolisherDashBoard extends StatefulWidget {
  manualPolisherDashBoard({Key? key}) : super(key: key);

  @override
  _manualPolisherDashBoardState createState() =>
      _manualPolisherDashBoardState();
}

class _manualPolisherDashBoardState extends State<manualPolisherDashBoard> {
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
        title: Text("Manual Polsiher Dash Board"),
        backgroundColor: Colors.black,
      ),
      body: Stack(children: [
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
          ),
        ),
        DashButton(
          buttonName: "Green Button",
          cardColor: Colors.green.shade400.withOpacity(0.9),
          instruction:
              "The Green button is Power which turns the grinder On/Off",
          left: _screenWidth / 6,
          stepTitle: "Normal speed for polsihing is 150 RPM",
          top: _screenH / firstLine,
        ),
        DashButton(
          buttonName: "Pink Button",
          cardColor: Colors.pink.shade400.withOpacity(0.9),
          instruction: "F2: \n•Edit Mode: Insert Step \n•Run Mode: Next Step",
          left: _screenWidth / 2.9,
          stepTitle: "Normal speed for polsihing is 150 RPM",
          top: _screenH / firstLine,
        ),
        DashButton(
          buttonName: "Yellow Button",
          cardColor: Colors.yellow.shade400.withOpacity(0.9),
          instruction:
              "The Yellow directional button changes the direction (Forward/Reverse)",
          left: _screenWidth / 6,
          stepTitle: "Normal speed for polsihing is 150 RPM",
          top: _screenH / firstLine,
        ),
        DashButton(
          buttonName: "Orange Button",
          cardColor: Colors.orange.shade400.withOpacity(0.9),
          instruction: "The Orange Negative Button decrease the RPM",
          left: _screenWidth / 2.9,
          stepTitle: "Normal speed for polsihing is 150 RPM",
          top: _screenH / secondLine,
        ),
        DashButton(
          buttonName: "Blue Button",
          cardColor: Colors.blue.shade400.withOpacity(0.9),
          instruction: "The Blue Positive Button increases the RPM",
          left: _screenWidth / 2.9,
          stepTitle: "Normal speed for polsihing is 150 RPM",
          top: _screenH / secondLine,
        ),
      ]),
    );
  }
}
