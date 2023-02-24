import 'package:mma_mse/floors/floor2/equbLayout/room240.dart';
import 'roomMode.dart';
import 'package:flutter/material.dart';

class room240 extends StatefulWidget {
  room240({Key? key}) : super(key: key);

  @override
  _room240State createState() => _room240State();
}

class _room240State extends State<room240> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 240",
        roomTi: "Room 240",
        roomLayO: room240LayO(
          eye: false,
        ),
        roomCont:
            "Equipments:\n1.Microwave Digestor\n2.Distiller for distilled water\n3. Fume hood\n4. Scale\n5. Storage for chemicals",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/240.jpg?raw=true");
  }
}
