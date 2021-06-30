import 'package:mma_mse/equipment/Hardness/manualMicroHardness/manualMHMain.dart';
import 'package:mma_mse/equipment/Microscope/Keyence/keyenceMain.dart';
import 'package:mma_mse/equipment/Microscope/Nikon/NikonMicroMain.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room241 extends StatefulWidget {
  room241({Key key}) : super(key: key);

  @override
  _room241State createState() => _room241State();
}

class _room241State extends State<room241> {
  double _screenWidth;
  double _screenH;

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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        title: Text("Room 241"),
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: [
          Column(
            children: [
              roomButton(
                length: _screenH / 8,
                width: _screenWidth / 2.6,
                name: "Manual Micro Hardness",
                pageTo: ManualMicroHardness(),
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/ManualHardness.png?raw=true",
              )
            ],
          )
        ],
      ),
    );
  }
}
