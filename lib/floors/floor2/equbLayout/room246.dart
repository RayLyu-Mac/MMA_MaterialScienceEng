import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/polisher/automaticPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/polisher/manualPolisher/manual_polisher_MainPage.dart';
import 'package:mma_mse/equipment/Etching/EtchingMain.dart';

import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room246LayO extends StatefulWidget {
  room246LayO({Key key}) : super(key: key);

  @override
  _room246LayOState createState() => _room246LayOState();
}

class _room246LayOState extends State<room246LayO> {
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
          title: Text("room 246"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          SizedBox(
            height: _screenWidth / 20,
          ),
          Row(children: [
            SizedBox(
              width: _screenH / 30,
            ),
            roomButton(
              length: _screenH / 5,
              width: _screenWidth / 1.1,
              name: "Etching",
            ),
          ]),
          SizedBox(
            height: _screenH / 20,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 30,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                name: "Manual Polisher",
              ),
              SizedBox(
                width: _screenH / 7,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                name: "Manual Polisher",
              )
            ],
          ),
          SizedBox(
            height: _screenH / 20,
          ),
          Row(
            children: [
              SizedBox(
                width: _screenH / 30,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: AutoPolisherMain(),
                name: "Auto Polisher",
              ),
              SizedBox(
                width: _screenH / 7,
              ),
              roomButton(
                length: _screenH / 4,
                width: _screenWidth / 3,
                pageTo: manual_polisher(),
                name: "Manual Polisher",
              ),
            ],
          )
        ]));
  }
}
