import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'roomBut.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class floor3 extends StatefulWidget {
  final bool eye;

  floor3({@required this.eye, Key key}) : super(key: key);

  @override
  _floor3State createState() => _floor3State();
}

class _floor3State extends State<floor3> {
  double _screenWidth;
  double _screenH;
  double adjust;
  double saftyI = -1;

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
      appBar: AppBar(
        title: Text("JHE Floor III"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          widget.eye || saftyI > 0
              ? roomButton(
                  left: _screenWidth / 14,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  backC: Colors.greenAccent[100].withOpacity(0.8),
                  detailTitle: "Exit",
                  details: "Emergency Exit for JHE Floor II",
                  icon: Icons.exit_to_app_rounded,
                )
              : roomButton(
                  left: _screenWidth / 14,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  name: "Stairs"),
          roomButton(
              left: _screenWidth / 14,
              top: _screenH / 9,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "352"),
          roomButton(
              left: _screenWidth / 14,
              top: _screenH / 3.7,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "351"),
          roomButton(
              left: _screenWidth / 14,
              top: _screenH / 2.3,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "350"),
          roomButton(
              left: _screenWidth / 14,
              top: _screenH / 1.65,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "349"),
          roomButton(
              left: _screenWidth / 14,
              top: _screenH / 1.3,
              length: _screenH / 11,
              width: _screenWidth / 3,
              name: "348"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 1.3,
              length: _screenH / 11,
              width: _screenWidth / 3,
              name: "357D"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 1.52,
              length: _screenH / 11,
              width: _screenWidth / 3,
              name: "357C"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 1.85,
              length: _screenH / 11,
              width: _screenWidth / 3,
              name: "357B"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 2.38,
              length: _screenH / 11,
              width: _screenWidth / 3,
              name: "357A"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 4,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "356"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 9.5,
              length: _screenH / 8,
              width: _screenWidth / 3,
              name: "           354"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 9,
              length: _screenH / 10,
              width: _screenWidth / 6,
              name: "355"),
          roomButton(
              left: _screenWidth / 1.62,
              top: _screenH / 35,
              length: _screenH / 14,
              width: _screenWidth / 3,
              name: "353"),
        ],
      ),
    );
  }
}
