import 'roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room246.dart';

class room246AMain extends StatefulWidget {
  room246AMain({Key key}) : super(key: key);

  @override
  _room246AMainState createState() => _room246AMainState();
}

class _room246AMainState extends State<room246AMain> {
  @override
  Widget build(BuildContext context) {
    return roomHorizontal(
        roomName: "Room 246A",
        roomTi: "246A Polishing Room",
        pageTo: room246LayO(),
        roomCont: "Equipments:\n1.Auto Polisher\n2.Manual Polisher\n3. Etching",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/246.jpg?raw=true");
  }
}
