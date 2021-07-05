import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Hardness/digitalRW/digitalRWMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:mma_mse/equipment/LlyoldTensile/LlyoldMain.dart';

class room134LayO extends StatefulWidget {
  room134LayO({Key key}) : super(key: key);

  @override
  _room134LayOState createState() => _room134LayOState();
}

class _room134LayOState extends State<room134LayO> {
  double _screenWidth;
  double _screenH;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenWidth / _screenH > 1.5) {
      _screenWidth = _screenWidth * 0.93;
      _screenH = _screenH * 1.16;
    }
    print(_screenWidth / _screenH);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: Stack(
        children: [
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/1.png?raw=true",
              name: "Torsion Tester"),
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 2.1,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true",
              pageTo: tensile_test(
                ori: true,
              ),
              name: "UTM I"),
          roomButton(
              top: _screenWidth / 40,
              left: _screenH / 1.2,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true",
              pageTo: tensile_test(
                ori: true,
              ),
              name: "UTM II"),
          roomButton(
              top: _screenWidth / 5.5,
              left: _screenH / 1.6,
              length: _screenH / 5.5,
              width: _screenWidth / 4.5,
              name: "Working Bench"),
          roomButton(
              top: _screenWidth / 7,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/f.png?raw=true",
              name: "Furnace"),
          roomButton(
              top: _screenWidth / 8.5,
              left: _screenH / 0.77,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true",
              pageTo: DigitalRWMain(
                ori: true,
              ),
              name: "Digital Rock Well"),
          roomButton(
              top: _screenWidth / 4.2,
              left: _screenH / 0.77,
              length: _screenH / 3,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/3.png?raw=true",
              name: "Compression Tester"),
          roomButton(
              top: _screenWidth / 4,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/f.png?raw=true",
              name: "Furnace"),
          roomButton(
              top: _screenWidth / 2.7,
              left: _screenH / 20,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true",
              pageTo: charpy_test(
                ori: true,
              ),
              name: "Charpy Impact Tester"),
          roomButton(
              top: _screenWidth / 2.9,
              left: _screenH / 2.2,
              length: _screenH / 6.5,
              width: _screenWidth / 6,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/2.png?raw=true",
              name: "Inert Gas Furnace"),
          roomButton(
              top: _screenWidth / 2.9,
              left: _screenH / 1.3,
              length: _screenH / 6.5,
              width: _screenWidth / 5,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Llyold.png?raw=true",
              pageTo: LlyoldTensileTester(
                ori: true,
              ),
              name: "Llyold Tensile Machine"),
        ],
      ),
    );
  }
}
