import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'roomBut.dart';
import 'package:mma_mse/floors/floor2/roomMain/239.dart';
import 'floor2/roomMain/240.dart';
import 'floor2/roomMain/239a.dart';
import 'floor2/roomMain/242.dart';
import 'floor2/roomMain/244.dart';
import 'floor2/roomMain/245.dart';
import 'floor2/roomMain/246.dart';

class floor2 extends StatefulWidget {
  floor2({Key key}) : super(key: key);

  @override
  _floor2State createState() => _floor2State();
}

class _floor2State extends State<floor2> {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;

    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.9;
      _screenWidth = _screenWidth * 0.93;
      adjust = 0.9;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "JHE Floor II",
          style:
              TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 35,
              length: _screenH / 15,
              width: _screenWidth / 3,
              name: "Stairs"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 9,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "243"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 3.4,
              length: _screenH / 12,
              width: _screenWidth / 3,
              pageTo: room242Main(),
              name: "242"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2.5,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "241"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2,
              length: _screenH / 12,
              width: _screenWidth / 3,
              pageTo: room240(),
              name: "240"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.66,
              length: _screenH / 7,
              width: _screenWidth / 3,
              pageTo: room239Main(),
              name: "239"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.3,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "238"),
          roomButton(
              left: _screenWidth / 5.5,
              top: _screenH / 1.66,
              length: _screenH / 20,
              width: _screenWidth / 4,
              fontsize: 18,
              elevation: 4,
              pageTo: room239AMain(),
              name: "239A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              pageTo: room244Main(),
              backC: Colors.lightGreenAccent[100],
              name: "244"),
          roomButton(
            left: _screenWidth / 1.94,
            top: _screenH / 35,
            length: _screenH / 20,
            width: _screenWidth / 10,
            icon: Icons.fire_extinguisher,
          ),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 7,
              length: _screenH / 9,
              width: _screenWidth / 3,
              pageTo: room245Main(),
              name: "245"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 3.73,
              length: _screenH / 9,
              width: _screenWidth / 3,
              pageTo: room246Main(),
              name: "246   246/A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2.54,
              length: _screenH / 9,
              width: _screenWidth / 3,
              name: "246A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.92,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "247"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.43,
              length: _screenH / 6.4,
              width: _screenWidth / 3,
              name: "248"),
        ],
      ),
    );
  }
}
