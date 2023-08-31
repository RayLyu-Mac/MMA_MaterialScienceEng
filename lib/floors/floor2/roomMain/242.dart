import 'roomMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room242.dart';

class room242Main extends StatefulWidget {
  room242Main({Key? key}) : super(key: key);

  @override
  _room242MainState createState() => _room242MainState();
}

class _room242MainState extends State<room242Main> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 242: Undergraduate Lab",
        roomTi: "Room 242: \nUndergrad Lab                 ",
        roomLayO: Room242LayO(),
        roomCont:
            "Equipments:\n1.Cutting Machine\n2.Belt Grinder\n3.Bulk Abrasive\n4.Manual Compression Press\n5.Cutting machine",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/242.jpg?raw=true");
  }
}
