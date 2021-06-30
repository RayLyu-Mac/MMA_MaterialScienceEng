import 'package:flutter/material.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room246BLayO extends StatefulWidget {
  room246BLayO({Key key}) : super(key: key);

  @override
  _room246BLayOState createState() => _room246BLayOState();
}

class _room246BLayOState extends State<room246BLayO> {
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
        backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          title: Text("room 246 B"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          SizedBox(
            height: _screenH / 25,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenWidth / 15,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                name: "??",
              ),
              SizedBox(
                width: _screenWidth / 5,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                name: "??",
              ),
            ],
          ),
          SizedBox(
            height: _screenH / 5,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenWidth / 15,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                name: "??",
              ),
              SizedBox(
                width: _screenWidth / 5,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                name: "??",
              ),
            ],
          )
        ]));
  }
}
