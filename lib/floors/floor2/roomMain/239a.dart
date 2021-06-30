import 'roomMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room239A.dart';

class room239AMain extends StatefulWidget {
  room239AMain({Key key}) : super(key: key);

  @override
  _room239AMainState createState() => _room239AMainState();
}

class _room239AMainState extends State<room239AMain> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "239A ICP-OES",
        roomTi: "239A ICP-OES",
        roomLayO: room239A(),
        roomCont: "Equipments:\n1.ICP-OES\n2.Computer and other protection",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/239a.jpg?raw=true");
  }
}
