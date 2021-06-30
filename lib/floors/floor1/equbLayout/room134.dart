import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/tensileTestMain.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Hardness/digitalRW/digitalRWMain.dart';
import 'package:mma_mse/floors/roomBut.dart';

class room134LayO extends StatefulWidget {
  room134LayO({Key key}) : super(key: key);

  @override
  _room134LayOState createState() => _room134LayOState();
}

class _room134LayOState extends State<room134LayO> {
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
    if (_screenWidth / _screenH > 1.8) {
      _screenWidth = _screenWidth * 0.95;
      _screenH = _screenH * 1.15;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_screenWidth / _screenH);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        title: Text("Room 134 Layout"),
        toolbarHeight: _screenWidth / 20,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              name: "Torsion Tester"),
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 2.1,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              pageTo: TensileTest(),
              name: "UTM I"),
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 1.2,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              pageTo: TensileTest(),
              name: "UTM II"),
          roomButton(
              top: _screenWidth / 5.5,
              left: _screenH / 1.6,
              length: _screenH / 5.5,
              width: _screenWidth / 4.5,
              name: "Working Bench"),
          roomButton(
              top: _screenWidth / 7,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              name: "Furnace"),
          roomButton(
              top: _screenWidth / 8,
              left: _screenH / 0.77,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              pageTo: DigitalRWMain(),
              name: "Digital Rock Well"),
          roomButton(
              top: _screenWidth / 4,
              left: _screenH / 0.77,
              length: _screenH / 3,
              width: _screenWidth / 5,
              name: "Compression Tester"),
          roomButton(
              top: _screenWidth / 4,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              name: "Furnace"),
          roomButton(
              top: _screenWidth / 2.7,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              pageTo: charpy_test(),
              name: "Charpy Impact Tester"),
          roomButton(
              top: _screenWidth / 2.7,
              left: _screenH / 2.2,
              length: _screenH / 6.5,
              width: _screenWidth / 6,
              name: "Inert Gas Furnace"),
          roomButton(
              top: _screenWidth / 2.7,
              left: _screenH / 1.3,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              name: "Llyold Tensile Machine"),
        ],
      ),
    );
  }
}
