import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/cutter/precCutter/PrecisionCutterMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class room239 extends StatefulWidget {
  room239({Key? key}) : super(key: key);

  @override
  _room239State createState() => _room239State();
}

class _room239State extends State<room239> {
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
        title: Text("Room 239"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 35,
              length: _screenH / 8,
              width: _screenWidth / 3,
              name: "N2 Gas Tank"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 6,
              length: _screenH / 3,
              width: _screenWidth / 3,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/LECO.png?raw=true",
              name: "Oxygen / Nitrogen Determinator"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 1.7,
              length: _screenH / 7,
              width: _screenWidth / 3,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/Scale.png?raw=true",
              name: "Scale"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2,
              length: _screenH / 3,
              width: _screenWidth / 3,
              name: "Gloves and water bottles"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 4,
              length: _screenH / 5,
              width: _screenWidth / 3,
              pageTo: PcutterMain(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/Ray_Test/assest/equipment/precut.jpg?raw=true",
              name: "Precision Cutter"),
        ],
      ),
    );
  }
}
// Unkown machine for LECO
