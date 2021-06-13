import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/MountPress/MET/METMain.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';
import 'package:mma_mse/equipment/polisher/BeuAutoPolisher/BehAutoPolMain.dart';
import 'package:mma_mse/equipment/cutter/Buehler Precision Cutter/BuehlerMain.dart';
import 'package:mma_mse/floors/roomBut.dart';

class room129LayO extends StatefulWidget {
  room129LayO({Key key}) : super(key: key);

  @override
  _room129LayOState createState() => _room129LayOState();
}

class _room129LayOState extends State<room129LayO> {
  double _screenWidth;
  double _screenH;
  double adjust;

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
          title: Text("Room 129 Layout"),
          backgroundColor: Colors.black,
        ),
        body: Row(children: [
          SizedBox(
            width: _screenWidth / 40,
          ),
          Column(children: [
            SizedBox(
              height: _screenH / 40,
            ),
            roomButton(
                length: _screenH / 7,
                pageTo: BlueFurnace(),
                width: _screenWidth / 3,
                name: "Blue Furnace"),
            SizedBox(
              height: _screenH / 40,
            ),
            roomButton(
                length: _screenH / 5.6,
                pageTo: BuehlerAutoPolisherMain(),
                width: _screenWidth / 3,
                name: "Buehler Auto Polisher"),
            SizedBox(
              height: _screenH / 40,
            ),
            roomButton(
                length: _screenH / 5.6,
                pageTo: BuehlerPolisherMain(),
                width: _screenWidth / 3,
                name: "Buehler Manual Polisher"),
            SizedBox(
              height: _screenH / 40,
            ),
            roomButton(
                length: _screenH / 4,
                pageTo: BlueFurnace(),
                width: _screenWidth / 3,
                name: "Fume Hood"),
          ]),
          SizedBox(
            width: _screenWidth / 4,
          ),
          Column(
            children: [
              SizedBox(
                height: _screenH / 10,
              ),
              roomButton(
                  length: _screenH / 5,
                  pageTo: METPress(),
                  width: _screenWidth / 3,
                  name: "Mounting Press MET"),
              SizedBox(
                height: _screenH / 17,
              ),
              roomButton(
                  length: _screenH / 5,
                  pageTo: BuehlerPolisherMain(),
                  width: _screenWidth / 3,
                  name: "Buehler Manual Polisher"),
              SizedBox(
                height: _screenH / 17,
              ),
              roomButton(
                  length: _screenH / 5,
                  pageTo: BuehlerCutterMain(),
                  width: _screenWidth / 3,
                  name: "Buehler Precision Cutter"),
            ],
          )
        ]));
  }
}
