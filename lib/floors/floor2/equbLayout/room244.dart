import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/furnace/Sic/SiCFurnaceMain.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/floors/roomBut.dart';

class room244LayO extends StatefulWidget {
  room244LayO({Key key}) : super(key: key);

  @override
  _room244LayOState createState() => _room244LayOState();
}

class _room244LayOState extends State<room244LayO> {
  double _screenWidth;
  double _screenH;
  double adjust;

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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_screenWidth / _screenH > 1.5) {
      _screenWidth = _screenWidth * 0.82;
      _screenH = _screenH * 1.25;
    }
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        body: Column(children: [
          SizedBox(
            height: _screenWidth / 40,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 30,
              ),
              roomButton(
                  length: _screenWidth / 8,
                  width: _screenH / 3,
                  pageTo: SiCFurnace(
                    ori: true,
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpg?raw=true",
                  name: "SiC Furnace"),
              SizedBox(
                width: _screenH / 5,
              ),
              for (var i = 0; i < 3; i++)
                Row(
                  children: [
                    SizedBox(
                      width: _screenH / 19,
                    ),
                    roomButton(
                        length: _screenWidth / 8,
                        width: _screenH / 3.4,
                        pageTo: BlueFurnace(
                          ori: true,
                        ),
                        backImg:
                            "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true",
                        name: "Blue Furnace"),
                  ],
                )
            ],
          ),
          SizedBox(
            height: _screenWidth / 28,
          ),
          Row(children: [
            SizedBox(width: _screenH / 3),
            for (var i = 0; i < 3; i++)
              Row(
                children: [
                  SizedBox(
                    width: _screenH / 19,
                  ),
                  roomButton(
                      length: _screenWidth / 8,
                      width: _screenH / 3.4,
                      pageTo: BlueFurnace(
                        ori: true,
                      ),
                      backImg:
                          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true",
                      name: "Blue Furnace"),
                ],
              )
          ]),
          SizedBox(
            height: _screenWidth / 35,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 25,
              ),
              roomButton(
                  length: _screenWidth / 8, width: _screenH / 3, name: "sink"),
              SizedBox(
                width: _screenH / 1.8,
              ),
              roomButton(
                  length: _screenWidth / 8,
                  width: _screenH / 1.6,
                  pageTo: BlueFurnace(
                    ori: true,
                  ),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/HTFume.png?raw=true",
                  name: "Fume Hood, Salt Pots used for heat treating"),
            ],
          )
        ]));
  }
}
