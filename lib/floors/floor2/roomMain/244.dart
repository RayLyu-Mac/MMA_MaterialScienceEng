import 'roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room244.dart';

class room244Main extends StatefulWidget {
  final String? emailTo;
  final String? location;
  final Widget? pageTo;
  room244Main(
      {@optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.location,
      Key? key})
      : super(key: key);

  @override
  _room244MainState createState() => _room244MainState();
}

class _room244MainState extends State<room244Main> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.9;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return roomHorizontal(
        roomName: "Room 244",
        roomTi: "Room 244: Heat Treatment Facilities",
        roomCont: "Equipments:\n1.Blue Furnace\n2.SiC Furnace",
        pageTo: room244LayO(),
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/244.jpg?raw=true");
  }
}
