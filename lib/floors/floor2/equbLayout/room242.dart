import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/cutter/BulkAbrasiveCutter/BulkAbrasiveMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/ManualCompressP/ManualCompMain.dart';

class room242LayO extends StatefulWidget {
  room242LayO({Key? key}) : super(key: key);

  @override
  _room242LayOState createState() => _room242LayOState();
}

class _room242LayOState extends State<room242LayO> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

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
        title: Text("room 242"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 35,
              length: _screenH / 8,
              width: _screenWidth / 3,
              name: "Belt Grinder"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 6,
              length: _screenH / 8,
              width: _screenWidth / 3,
              name: "Vice & Floor Grinder & Drill Pressor"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 3.3,
              length: _screenH / 4,
              width: _screenWidth / 3,
              name: "working bench"),
          roomButton(
              left: _screenWidth / 13,
              top: _screenH / 1.7,
              length: _screenH / 5.5,
              width: _screenWidth / 3,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/sink.png?raw=true",
              name: "Sink"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.55,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Belt Grinder"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2.2,
              length: _screenH / 6,
              width: _screenWidth / 3,
              pageTo: ManualCompPress(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Manual%20Pressor.jpg?raw=true",
              name: "Manual Compression Press"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 4.2,
              length: _screenH / 5,
              width: _screenWidth / 3,
              pageTo: BulkAbrasive_Main(),
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/abc.jpg?raw=true",
              name: "Bulk Abrasive Cutter"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 18,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Cutter"),
        ],
      ),
    );
  }
}
