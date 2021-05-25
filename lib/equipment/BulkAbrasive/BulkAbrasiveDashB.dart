import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/equipment/Dash_borad_button.dart';

class automaticModeInterFaceButton extends StatefulWidget {
  automaticModeInterFaceButton({Key key}) : super(key: key);

  @override
  _automaticModeInterFaceButtonState createState() =>
      _automaticModeInterFaceButtonState();
}

class _automaticModeInterFaceButtonState
    extends State<automaticModeInterFaceButton> {
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
  double adjust;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth < 0.5) {
      _screenH = _screenH * 1.3;
      adjust = 0.9;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Automatic Polsiher Dash Board"),
          backgroundColor: Colors.black,
        ),
        body: Stack(children: [
          Positioned(
              left: _screenH / 13,
              top: _screenWidth / 35,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.1, height: _screenH / 1.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(4, 4), color: Colors.grey[300])
                  ],
                ),
              )),
          DashButton(
              cardColor: Colors.blue[300],
              instruction: "•The Clamping bed is fed at a continuous speed",
              left: _screenH / 7 / adjust,
              stepTitle: "Rapid",
              buttonName: "Rapid",
              top: _screenWidth / 18),
          DashButton(
            cardColor: Colors.yellow,
            instruction:
                "•Used when you are cutting either a thick sample or a very hard sample \nThe clamping bed will move ahead a bit then stop to allow cuttings to be removed then mvoe ahead again and continue to do this until the sample is sectioned",
            left: _screenH / 7 / adjust,
            stepTitle: "Pulse",
            top: _screenWidth / 6.5,
            buttonName: "Pulse",
          ),
          DashButton(
            cardColor: Colors.grey,
            instruction: "•When press pause button will stop the cut",
            left: _screenH / 7,
            stepTitle: "Pause",
            top: _screenWidth / 3.9,
            buttonName: "Pause",
          ),
          DashButton(
            cardColor: Colors.blue,
            width: _screenWidth / 8.7,
            instruction:
                "•Stop: when pressed will  turn off the botor and the bed will return to 0 position",
            left: _screenH / 7,
            stepTitle: "Stop",
            top: _screenWidth / 2.8,
            button_icon: Icon(FontAwesomeIcons.solidStopCircle),
          ),
          DashButton(
            cardColor: Colors.blue,
            width: _screenWidth / 8.7,
            instruction:
                "•Start: when pressed will start the motor and the bed ",
            left: _screenH / 2.9,
            stepTitle: "Start",
            top: _screenWidth / 2.8,
            button_icon: Icon(FontAwesomeIcons.solidPlayCircle),
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            instruction:
                "•Press Up or down will either increase or decrease the feed rate",
            left: _screenH / 1.7,
            stepTitle: "Start",
            top: _screenWidth / 18,
            buttonName: "Feed Rate",
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            width: _screenWidth / 14,
            height: _screenH / 12,
            instruction: "•Press Up  will either increase the feed rate",
            left: _screenH / 1.03,
            stepTitle: "Start",
            top: _screenWidth / 20,
            button_icon: Icon(Icons.arrow_upward),
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            left: _screenH / 1.03,
            top: _screenWidth / 9.2,
            width: _screenWidth / 14,
            height: _screenH / 12,
            stepTitle: "Down",
            instruction: "•Press Down  will decrease the feed rate",
            button_icon: Icon(Icons.arrow_downward),
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            left: _screenH / 1.7,
            top: _screenWidth / 6.6,
            stepTitle: "Cutting Length",
            instruction:
                "•When Pressed a new window will appear using the number pad, enter the length of the sample which needs to be cur/ [ress enter and the number pad disappear",
            buttonName: "Cut Leng",
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            left: _screenH / 1.7,
            top: _screenWidth / 4,
            stepTitle: "Distance Remaining",
            instruction:
                "•When sample being sectioned the cutting distance will decrease until 0 then clamping bed will move to the 0 position and the motor will shut off automatically",
            buttonName: "Dis Rema",
          ),
          DashButton(
            cardColor: Colors.lightBlue[300],
            left: _screenH / 1.7,
            top: _screenWidth / 2.8,
            fontsize: _screenWidth / 40.5,
            stepTitle: "Sample Thickness",
            instruction: "•You can enter the sample thickness",
            buttonName: "Samp Thickness",
          ),
          DashButton(
            cardColor: Colors.orange[300],
            left: _screenH / 0.85,
            top: _screenWidth / 20,
            stepTitle: "Light",
            instruction: "•Doesn't work",
            buttonName: "Light",
          ),
          DashButton(
            cardColor: Colors.lightBlueAccent,
            left: _screenH / 0.85,
            top: _screenWidth / 6,
            stepTitle: "Pump",
            instruction:
                "•When pressed will turn on/off the coolant pump, you see this when you are finished your cuts and need to rinse doen the chamber",
            buttonName: "Pump",
          ),
        ]));
  }
}
