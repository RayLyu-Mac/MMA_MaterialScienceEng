import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/furnace/Sic/SiCFurnaceMain.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';

class room244LayO extends StatefulWidget {
  room244LayO({Key key}) : super(key: key);

  @override
  _room244LayOState createState() => _room244LayOState();
}

class _room244LayOState extends State<room244LayO> {
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
    if (_screenWidth / _screenH > 1.5) {
      _screenWidth = _screenWidth * 0.93;
      _screenH = _screenH * 1.16;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Room 244 Equipment List"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          EqubButton(
              backColor: furnace,
              function: purpfurnace,
              pageTo: SiCFurnace(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/hscf.jpgraw=true",
              name: "SiC Furnace"),
          EqubButton(
              function: purpfurnace,
              backColor: furnace,
              pageTo: BlueFurnace(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/blue.jpgraw=true",
              name: "Blue Furnace"),
        ])));
  }
}
