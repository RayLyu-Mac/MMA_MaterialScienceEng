import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/MountPress/MET/METMain.dart';
import 'package:mma_mse/equipment/furnace/blue/blurFMain.dart';
import 'package:mma_mse/equipment/polisher/Bupolisher/BuPolisherMain.dart';
import 'package:mma_mse/equipment/polisher/BeuAutoPolisher/BehAutoPolMain.dart';
import 'package:mma_mse/equipment/cutter/Buehler Precision Cutter/BuehlerMain.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: Text("room 242"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          SizedBox(
            height: _screenWidth / 40,
          ),
          Row(children: [
            SizedBox(
              width: _screenH / 30,
            ),
          ])
        ]));
  }
}
