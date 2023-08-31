import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:mma_mse/equipment/polisher/BeuAutoPolisher/BehAutoPolMain.dart';
import 'package:mma_mse/equipment/cutter/Buehler Precision Cutter/BuehlerMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';

class room129LayO extends StatefulWidget {
  room129LayO({Key? key}) : super(key: key);

  @override
  _room129LayOState createState() => _room129LayOState();
}

class _room129LayOState extends State<room129LayO> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

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
    return Scaffold(
        appBar: AppBar(
          title: Text("Room 129 Equipment List"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              EqubButton(
                  function: purpfurnace,
                  backColor: furnace,
                  pageTo: BlueFurnace(),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpg?raw=true",
                  name: "Blue Furnace"),
              SizedBox(
                height: _screenH / 40,
              ),
              EqubButton(
                  backColor: polish,
                  function: purpPolishg,
                  pageTo: BuehlerAutoPolisherMain(),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Buehler%20Auto%20Polisher.jpg?raw=true",
                  name: "Buehler Auto Polisher"),
              EqubButton(
                  function: "Safe Operation for Chemical",
                  pageTo: Container(),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/RFume.png?raw=true",
                  backColor: Colors.amber,
                  name: "Fume Hood"),
              EqubButton(
                  function: purpCutting,
                  backColor: cutter,
                  pageTo: BuehlerCutterMain(),
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/bcutter.jpg?raw=true",
                  name: "Buehler Precision Cutter"),
            ],
          ),
        )));
  }
}
