import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Layout Overview"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 25,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 3,
                  height: _screenH / 4,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assest/bg.png"))),
              ))
        ],
      ),
    );
  }
}
