import 'package:mma_mse/floors/floor2/roomMain/roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'equbLayout/room134.dart';

class Mech_lab extends StatefulWidget {
  final String? emailTo;
  final String? location;
  final Widget? pageTo;
  Mech_lab({this.emailTo, this.pageTo, this.location, Key? key})
      : super(key: key);

  @override
  _Mech_labState createState() => _Mech_labState();
}

class _Mech_labState extends State<Mech_lab> {
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
        roomName: "Room 134",
        roomTi: "Room 134: Mechanical Lab",
        roomCont:
            "Equipments:\n1.Digital RockWell\n2.Llyold Tensile Test Machine\n3.Furnace\n4.Charpy Impact Tester\n5.UTM",
        pageTo: room134LayO(),
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/134.jpg?raw=true");
  }
}
