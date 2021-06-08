import 'package:flutter/material.dart';
import 'PressureU.dart';

class UnitCOnverMain extends StatefulWidget {
  UnitCOnverMain({Key key}) : super(key: key);

  @override
  _UnitCOnverMainState createState() => _UnitCOnverMainState();
}

class _UnitCOnverMainState extends State<UnitCOnverMain> {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: AppBar(
        title: Text("Unit Conversion Tools"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            _screenWidth / 25, _screenH / 20, 5, _screenH / 20),
        controller: controller,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.1, height: _screenH / 2),
              child: Card(
                color: Colors.white.withOpacity(0.7),
                child: Column(
                  children: [
                    Text("Common Letter Means (Big) \n(Take Pa as example)",
                        style: TextStyle(
                            fontSize: _screenH / 33,
                            fontWeight: FontWeight.bold)),
                    Text("kPa=1e3 Pa\nmPa=1e6 Pa\nGPa=1e9 Pa",
                        style: TextStyle(fontSize: _screenH / 40)),
                    SizedBox(
                      height: _screenH / 30,
                    ),
                    Text("Common Letter Means (Small) \n(Take m as example)",
                        style: TextStyle(
                            fontSize: _screenH / 33,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "mm=1e-3 m\nmicro-meter=1e-6 m\nnm=1e-9 m\nA= 1e-10 m",
                      style: TextStyle(fontSize: _screenH / 40),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenH / 40,
            ),
            unitC()
          ],
        ),
      ),
    );
  }
}
