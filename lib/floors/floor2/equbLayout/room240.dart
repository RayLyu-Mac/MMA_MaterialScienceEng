import 'package:flutter/material.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room240LayO extends StatefulWidget {
  room240LayO({Key key}) : super(key: key);

  @override
  _room240LayOState createState() => _room240LayOState();
}

class _room240LayOState extends State<room240LayO> {
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
        title: Text("room 240"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              name: "N2 Gas Tank"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 6.5,
              length: _screenH / 10,
              width: _screenWidth / 3,
              name: "Microwave Digestor"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 3.6,
              length: _screenH / 10,
              width: _screenWidth / 3,
              name: "Distiller for distilled water"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 2.47,
              length: _screenH / 10,
              width: _screenWidth / 3,
              name: "Water Sink"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 1.9,
              length: _screenH / 4,
              width: _screenWidth / 3,
              name: "Fume Hood"),
          roomButton(
              left: _screenWidth / 4.9,
              top: _screenH / 1.45,
              length: _screenH / 12,
              width: _screenWidth / 5,
              name: "Scale"),
          roomButton(
              left: _screenWidth / 1.64,
              top: _screenH / 6.5,
              length: _screenH / 3,
              width: _screenWidth / 3,
              name: "Cabinet"),
          roomButton(
              left: _screenWidth / 1.64,
              top: _screenH / 1.8,
              length: _screenH / 9,
              width: _screenWidth / 3,
              name: "Scale"),
        ],
      ),
    );
  }
}
