import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/ICP_OES/ICPMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room239A extends StatefulWidget {
  room239A({Key key}) : super(key: key);

  @override
  _room239AState createState() => _room239AState();
}

class _room239AState extends State<room239A> {
  double _screenWidth;
  double _screenH;
  double adjust;
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
        title: Text("Room 239A"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 35,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Gloves"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 35,
              length: _screenH / 2.5,
              width: _screenWidth / 3,
              pageTo: ICP_OES_Main(),
              name: "ICP-OES"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2,
              length: _screenH / 4,
              width: _screenWidth / 3,
              name: "Computer"),
        ],
      ),
    );
  }
}
