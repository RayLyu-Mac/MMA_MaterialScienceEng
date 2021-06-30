import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/polisher/automaticPolisher/autoPolisherMain.dart';
import 'package:mma_mse/equipment/MountPress/EcoPress/EcoMain.dart';
import 'package:mma_mse/equipment/MountPress/Strues/StruesMain.dart';
import 'package:mma_mse/equipment/ManualGrinder/MgrinderMain.dart';
import 'package:mma_mse/equipment/MountPress/MET/METMain.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'package:flutter/services.dart';

class room245LayO extends StatefulWidget {
  room245LayO({Key key}) : super(key: key);

  @override
  _room245LayOState createState() => _room245LayOState();
}

class _room245LayOState extends State<room245LayO> {
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
          title: Text("room 245"),
          backgroundColor: Colors.black,
        ),
        body: Row(
          children: [
            SizedBox(
              width: _screenWidth / 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: _screenH / 30,
                ),
                roomButton(
                  length: _screenH / 2,
                  width: _screenWidth / 4,
                  name: "Cabinet, Storage Locker",
                ),
                SizedBox(
                  height: _screenH / 15,
                ),
                roomButton(
                  length: _screenH / 4,
                  width: _screenWidth / 4,
                  name: "Press Machine",
                )
              ],
            ),
            SizedBox(
              width: _screenWidth / 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: _screenH / 30,
                ),
                roomButton(
                  length: _screenH / 7,
                  width: _screenWidth / 3.5,
                  name: "Working Bench",
                ),
                SizedBox(
                  height: _screenH / 1.9,
                ),
                roomButton(
                  length: _screenH / 7,
                  width: _screenWidth / 3.5,
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/regularE/245C.png?raw=true",
                  name: "Microscope & Gloves",
                ),
              ],
            ),
            SizedBox(
              width: _screenWidth / 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: _screenH / 30,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  name: "MET Mounting Machine",
                  fontsize: 16,
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true",
                  pageTo: METPress(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  fontsize: 16,
                  name: "MET Mounting Machine",
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/met.jpg?raw=true",
                  pageTo: METPress(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  fontsize: 16,
                  name: "Strues Mounting Machine",
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/stru.jpg?raw=true",
                  pageTo: StruesMain(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  fontsize: 16,
                  name: "Eco Mounting Machine",
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/ecop.jpg?raw=true",
                  pageTo: EcoPress(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  fontsize: 16,
                  name: "Manual Grinder",
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true",
                  pageTo: ManualGrinder(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                  length: _screenH / 10,
                  width: _screenWidth / 3.5,
                  fontsize: 16,
                  name: "Auto Polisher Machine",
                  backImg:
                      "https://github.com/RayLyu-Mac/MMA/blob/master/assest/equipment/ap.jpg?raw=true",
                  pageTo: AutoPolisherMain(),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                roomButton(
                    length: _screenH / 10,
                    width: _screenWidth / 3.5,
                    fontsize: 16,
                    name: "Manual Grinder",
                    pageTo: ManualGrinder(),
                    backImg:
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/mg.jpg?raw=true"),
              ],
            )
          ],
        ));
  }
}
