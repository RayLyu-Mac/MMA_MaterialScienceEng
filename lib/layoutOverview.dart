import 'package:flutter/material.dart';
import 'fancyButton.dart';
import 'floors/floor2.dart';
import 'floors/floor3.dart';
import 'floors/floor1.dart';

class layout extends StatefulWidget {
  layout({Key key}) : super(key: key);

  @override
  _layoutState createState() => _layoutState();
}

class _layoutState extends State<layout> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Layout Overview"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 25,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.1,
                  height: _screenH / 1.3,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/bglay.png"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: _screenH / 1.68,
              left: _screenWidth / 20,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor1(
                    eye: false,
                    fire: false,
                  ),
                  width: _screenWidth / 2.8,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor I")),
          Positioned(
              top: _screenH / 2.5,
              left: _screenWidth / 1.7,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor2(
                    eye: false,
                    fire: false,
                  ),
                  width: _screenWidth / 2.8,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor II")),
          Positioned(
              top: _screenH / 4.5,
              left: _screenWidth / 2.4,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor2(
                    eye: false,
                    fire: false,
                  ),
                  width: _screenWidth / 2.7,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor III")),
          Positioned(
              top: _screenH / 1.25,
              left: _screenWidth / 1.6,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 3,
                  height: _screenH / 4,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/layout/sci.PNG?raw=true"),
                        fit: BoxFit.cover)),
              )),
        ],
      ),
    );
  }
}
