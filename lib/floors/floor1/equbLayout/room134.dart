import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Hardness/digitalRW/digitalRWMain.dart';
import 'package:mma_mse/floors/EqubButton.dart';
import 'package:mma_mse/equipment/LlyoldTensile/LlyoldMain.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';

class room134LayO extends StatefulWidget {
  room134LayO({Key? key}) : super(key: key);

  @override
  _room134LayOState createState() => _room134LayOState();
}

class _room134LayOState extends State<room134LayO> {
  double _screenWidth = 0;
  double _screenH = 0;
  String notUsed = "Currently Not Used";
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

    return Scaffold(
      appBar: AppBar(title: Text("Room 134 Equipment List")),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            EqubButton(
                function: "Mechanical Properties Tester",
                backColor: tensile,
                backImg:
                    "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/mts.jpg?raw=true",
                pageTo: tensile_test(
                  ori: true,
                ),
                name: "Universal Tensile Machine"),
            EqubButton(
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/digiRW.jpg?raw=true",
                pageTo: DigitalRWMain(),
                function: "Hardness Tester",
                backColor: hardness,
                name: "Digital Rock Well"),
            EqubButton(
                function: "Hardness Tester",
                backImg:
                    "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/cit.jpg?raw=true",
                pageTo: charpy_test(),
                backColor: Colors.grey,
                name: "Charpy Impact Tester"),
            EqubButton(
                function: "Mechanical Properties Tester",
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/Update/Llyold.png?raw=true",
                pageTo: LlyoldTensileTester(),
                backColor: tensile,
                name: "Llyold Tensile Machine"),
            EqubButton(
                pageTo: Container(),
                function: notUsed,
                backColor: Colors.grey,
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/2.png?raw=true",
                name: "Inert Gas Furnace"),
            EqubButton(
                pageTo: Container(),
                backColor: furnace,
                function: notUsed,
                backImg:
                    "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/f.png?raw=true",
                name: "Furnace"),
          ],
        )),
      ),
    );
  }
}
