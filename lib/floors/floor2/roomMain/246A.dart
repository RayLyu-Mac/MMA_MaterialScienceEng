import 'roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room246B.dart';

class room246AMain extends StatefulWidget {
  room246AMain({Key key}) : super(key: key);

  @override
  _room246AMainState createState() => _room246AMainState();
}

class _room246AMainState extends State<room246AMain> {
  @override
  Widget build(BuildContext context) {
    return roomHorizontal(
        roomName: "Room 246B",
        roomTi: "246B Microscope Room",
        pageTo: room246BLayO(),
        roomCont:
            "Equipments:\n1.Nikon Microscope\n2.Manual Micro-Hardness\nTester",
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/246b.jpgraw=true");
  }
}
