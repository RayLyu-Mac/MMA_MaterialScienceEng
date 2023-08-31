import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/polisher/automaticPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/polisher/manualPolisher/manual_polisher_MainPage.dart';
import 'package:mma_mse/equipment/Etching/EtchingMain.dart';

import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room246LayO extends StatefulWidget {
  room246LayO({Key? key}) : super(key: key);

  @override
  _room246LayOState createState() => _room246LayOState();
}

class _room246LayOState extends State<room246LayO> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          title: Text("Room 246"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          SizedBox(
            height: _screenWidth / 20,
          ),
          Row(children: [
            SizedBox(
              width: _screenH / 30,
            ),
            roomButton(
              length: _screenH / 5,
              width: _screenWidth / 1.1,
              pageTo: Etching(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/eth.jpg?raw=true",
              name: "Etching",
            ),
          ]),
          SizedBox(
            height: _screenH / 20,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 30,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
                name: "Manual Polisher",
              ),
              SizedBox(
                width: _screenH / 7,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
                name: "Manual Polisher",
              )
            ],
          ),
          SizedBox(
            height: _screenH / 20,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 30,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: AutoPolisherMain(),
                backImg:
                    "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true",
                name: "Auto Polisher",
              ),
              SizedBox(
                width: _screenH / 7,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
                name: "Manual Polisher",
              ),
            ],
          )
        ]));
  }
}
