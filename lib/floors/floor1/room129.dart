import 'package:mma_mse/floors/floor2/roomMain/roomMode.dart';
import 'package:flutter/material.dart';

import 'package:mma_mse/floors/floor1/equbLayout/room129.dart';

class room129 extends StatefulWidget {
  room129({Key? key}) : super(key: key);

  @override
  _room129State createState() => _room129State();
}

class _room129State extends State<room129> {
  @override
  Widget build(BuildContext context) {
    return roomMode(
        roomName: "Room 129",
        roomTi: "Room 129",
        roomLayO: room129LayO(),
        roomCont:
            "Equipments:\n1.Buehler Auto Polisher\n2.Buehler Precision Cutter\n3.Buehler Manual Polisher\n4.Blue Furnace\n5.Mounting Press (MET)             ",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/129.jpg?raw=true");
  }
}
