import 'package:mma_mse/floors/floor2/roomMain/roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1/equbLayout/room129.dart';

class Room129 extends StatefulWidget {
  Room129({Key? key}) : super(key: key);

  @override
  _Room129State createState() => _Room129State();
}

class _Room129State extends State<Room129> {
  @override
  Widget build(BuildContext context) {
    return roomHorizontal(
        roomName: "Room 129",
        roomTi: "Room 129",
        pageTo: room129LayO(),
        roomCont:
            "Equipments:\n1.Buehler Auto Polisher\n2.Buehler Precision Cutter\n3.Buehler Manual Polisher\n4.Blue Furnace\n5.Mounting Press (MET)             ",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/129.jpg?raw=true");
  }
}
