import 'roomMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/room239A.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room246B.dart';

class room246AMain extends StatefulWidget {
  room246AMain({Key key}) : super(key: key);

  @override
  _room246AMainState createState() => _room246AMainState();
}

class _room246AMainState extends State<room246AMain> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 246B",
        roomTi: "246B Microscope Room",
        roomLayO: room246BLayO(),
        roomCont: "Equipments:\n1.ICP-OES\n2.Computer and other protection",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/246b.jpg?raw=true");
  }
}
