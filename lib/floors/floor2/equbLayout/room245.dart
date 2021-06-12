import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/polisher/automaticPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/MountPress/EcoPress/EcoMain.dart';
import 'package:mma_mse/equipment/MountPress/Strues/StruesMain.dart';
import 'package:mma_mse/equipment/ManualGrinder/MgrinderMain.dart';
import 'package:mma_mse/equipment/MountPress/MET/METMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room245LayO extends StatefulWidget {
  room245LayO({Key key}) : super(key: key);

  @override
  _room245LayOState createState() => _room245LayOState();
}

class _room245LayOState extends State<room245LayO> {
  double _screenWidth;
  double _screenH;
  double adjust;

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
        appBar: AppBar(
          title: Text("room 245"),
          backgroundColor: Colors.black,
        ),
        body: Row(
          children: [
            SizedBox(
              width: _screenWidth / 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: _screenH / 30,
                ),
                roomButton(
                  length: _screenH / 2,
                  width: _screenWidth / 3.5,
                  name: "Cabinet",
                ),
                SizedBox(
                  height: _screenH / 30,
                ),
                roomButton(
                  length: _screenH / 7,
                  width: _screenWidth / 3.5,
                  name: "Press Machine",
                )
              ],
            )
          ],
        ));
  }
}
