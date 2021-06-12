import 'roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room245.dart';

class room246Main extends StatefulWidget {
  final String emailTo;
  final String location;
  final Widget pageTo;
  room246Main(
      {@optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.location,
      Key key})
      : super(key: key);

  @override
  _room246MainState createState() => _room246MainState();
}

class _room246MainState extends State<room246Main> {
  double _screenWidth;
  double _screenH;
  double adjust;

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
        roomName: "Room 246",
        roomTi: "Room 246: Polishing and Etching",
        roomCont:
            "Equipments:\n1.Mounting Machine\n(MET/Strues/Eco)\n2.Microscope\n3.Manual Grinder\n4.Auto Polisher",
        pageTo: room245LayO(),
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/246.jpg?raw=true");
  }
}
