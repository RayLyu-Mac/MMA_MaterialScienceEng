import 'roomMode.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room241.dart';
import 'package:flutter/material.dart';

class room241Main extends StatefulWidget {
  room241Main({Key key}) : super(key: key);

  @override
  _room241MainState createState() => _room241MainState();
}

class _room241MainState extends State<room241Main> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 241: Microscope Room",
        roomTi: "Room 241: \nMicroscope Room",
        roomLayO: room241(),
        roomCont:
            "Equipments:\n1. Manual Micro Hardness Tester\n2. Nikon Microscope\n3. Keyence Microscope",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/241.pngraw=true");
  }
}
