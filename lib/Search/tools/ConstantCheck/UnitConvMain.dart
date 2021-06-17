import 'package:flutter/material.dart';
import 'PressureU.dart';
import 'thermalU.dart';
import 'lengthU.dart';
import 'volumeU.dart';
import 'package:mma_mse/customTileScroll.dart';

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
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text("Unit Conversion Tools"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Text(
                  "Unit Conversion Tool",
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.5, height: _screenWidth / 4),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assest/logocolor.png"))),
                )
              ],
            )),
            ScrollcustomListTile(
                name: "Common unit check",
                pageTo: 0,
                fonts: 13,
                controller: controller),
            ScrollcustomListTile(
                name: "Pressure unit conversion",
                pageTo: 1,
                fonts: 13,
                controller: controller),
            ScrollcustomListTile(
                name: "Theramal unit conversion",
                pageTo: 2,
                fonts: 13,
                controller: controller),
            ScrollcustomListTile(
                name: "Temperature unit conversion",
                pageTo: 3,
                fonts: 13,
                controller: controller),
            ScrollcustomListTile(
                name: "Length unit conversion",
                pageTo: 4,
                fonts: 13,
                controller: controller),
            ScrollcustomListTile(
                name: "Volumne unit conversion",
                pageTo: 5,
                fonts: 13,
                controller: controller),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            _screenWidth / 20, _screenH / 30, 5, _screenH / 20),
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
            unitC(),
            SizedBox(
              height: _screenH / 40,
            ),
            thermalUC(),
            SizedBox(
              height: _screenH / 40,
            ),
            LengthUC(),
            SizedBox(
              height: _screenH / 40,
            ),
            VolumeUC()
          ],
        ),
      ),
    );
  }
}
