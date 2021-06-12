import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/cutter/BulkAbrasiveCutter/BulkAbrasiveMain.dart';
// Two unkown machine
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room242LayO extends StatefulWidget {
  room242LayO({Key key}) : super(key: key);

  @override
  _room242LayOState createState() => _room242LayOState();
}

class _room242LayOState extends State<room242LayO> {
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
        title: Text("room 242"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              name: "Cutting machine"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 5.5,
              length: _screenH / 4,
              width: _screenWidth / 3,
              name: "working bench"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 2,
              length: _screenH / 5.5,
              width: _screenWidth / 3,
              name: "Sink"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.55,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Belt Grinder"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2.2,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Manual Compression Press"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 4.2,
              length: _screenH / 5,
              width: _screenWidth / 3,
              name: "Bulk Abrasive Cutter"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 18,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Cutter"),
        ],
      ),
    );
  }
}
