import 'roomHorizonMode.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room245.dart';

class room245Main extends StatefulWidget {
  final String? emailTo;
  final String? location;
  final Widget? pageTo;
  room245Main(
      {@optionalTypeArgs this.emailTo,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.location,
      Key? key})
      : super(key: key);

  @override
  _room245MainState createState() => _room245MainState();
}

class _room245MainState extends State<room245Main> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return roomHorizontal(
        roomName: "Room 245",
        roomTi: "Room 245: Metallography Lab",
        roomCont:
            "Equipments:\n1.Mounting Machine\n(MET/Strues/Eco)\n2.Microscope\n3.Manual Grinder\n4.Auto Polisher",
        pageTo: room245LayO(),
        roomImg:
            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/245.jpg?raw=true");
  }
}
