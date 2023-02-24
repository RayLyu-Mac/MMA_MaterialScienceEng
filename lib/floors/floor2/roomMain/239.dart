import 'roomMode.dart';
import 'package:flutter/material.dart';

import 'package:mma_mse/floors/floor2/equbLayout/room239.dart';

class room239Main extends StatefulWidget {
  room239Main({Key? key}) : super(key: key);

  @override
  _room239MainState createState() => _room239MainState();
}

class _room239MainState extends State<room239Main> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 239: Chemical Analysis Lab",
        roomTi: "Room 239: \nChemical Analysis Lab",
        roomLayO: room239(),
        roomCont:
            "Equipments:\n1.Scale\n2.Precision Cutter\n3.LCED\n4.Nitrogen gas tank              ",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/room239.jpg?raw=true");
  }
}
