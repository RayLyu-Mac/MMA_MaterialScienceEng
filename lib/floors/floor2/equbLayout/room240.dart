import 'package:flutter/material.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room240LayO extends StatefulWidget {
  final bool eye;
  room240LayO({@optionalTypeArgs this.eye, Key key}) : super(key: key);

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
      backgroundColor: Colors.white.withOpacity(0.8),
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
          widget.eye != null && widget.eye
              ? Positioned(
                  left: _screenWidth / 13,
                  top: _screenH / 2.47,
                  child: Container(
                    width: _screenWidth / 2,
                    height: _screenH / 12,
                    child: Row(
                      children: [
                        roomButton(
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.remove_red_eye_rounded,
                          detailTitle: "Room 240: Eye shower",
                          details: "Emergency eye shower when chemical spills",
                        ),
                        SizedBox(
                          width: _screenWidth / 20,
                        ),
                        roomButton(
                          detailTitle: "Room 240: Chemical Shower",
                          details: "Emergency body shower when chemical spills",
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.shower_rounded,
                        )
                      ],
                    ),
                  ))
              : roomButton(
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
              name: "Cabinet: Chemical Storage"),
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
