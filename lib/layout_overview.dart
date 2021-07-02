import 'package:flutter/material.dart';
import 'fancyButton.dart';
import 'floors/floor2.dart';
import 'floors/floor3.dart';
import 'floors/floor1.dart';
import 'Drawer.dart';

class layout_overview extends StatefulWidget {
  layout_overview({Key key}) : super(key: key);

  @override
  _layout_overviewState createState() => _layout_overviewState();
}

class _layout_overviewState extends State<layout_overview> {
  double _screenWidth;
  double _screenH;
  double adjust = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      _screenH = _screenH * 0.83;
      adjust = 0.78;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Layout Overview"),
        backgroundColor: Colors.black,
      ),
      drawer: standardDrawer(header: "JHE Layout"),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 50,
              left: _screenWidth / 25,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.1,
                  height: _screenH / 1.3 / adjust,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/bglay.png"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: _screenH / 1.74 / adjust,
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
              top: _screenH / 2.7 / adjust,
              left: _screenWidth / 1.78,
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
              top: _screenH / 5 / adjust,
              left: _screenWidth / 20,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor3(
                    eye: false,
                  ),
                  width: _screenWidth / 2.7,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor III")),
          Positioned(
              top: _screenH / 1.4 / adjust,
              left: _screenWidth / 1.4,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 4,
                  height: _screenH / 5.5 / adjust,
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
