import 'package:mma_mse/floors/floor2/roomMain/roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room245.dart';
import 'equbLayout/room134.dart';

class mech_lab extends StatefulWidget {
  final String emailTo;
  final String location;
  final Widget pageTo;
  mech_lab(
      {@optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.location,
      Key key})
      : super(key: key);

  @override
  _mech_labState createState() => _mech_labState();
}

class _mech_labState extends State<mech_lab> {
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
        roomName: "Room 134",
        roomTi: "Room 134: Mechanical Lab",
        roomCont:
            "Equipments:\n1.Digital RockWell\n2.Llyold Tensile Test Machine\n3.Furnace\n4.Charpy Impact Tester\n5.UTM",
        pageTo: room134LayO(),
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/134.jpg?raw=true");
  }
}
