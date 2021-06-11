import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor2/equbLayout/room239.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';

class room239Main extends StatefulWidget {
  room239Main({Key key}) : super(key: key);

  @override
  _room239MainState createState() => _room239MainState();
}

class _room239MainState extends State<room239Main> {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room 239: Chemical Analysis Lab"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 40,
              left: _screenWidth / 35,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.1, height: _screenH / 1.9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 4, color: Colors.grey[300]),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/floors/floor2/room239.jpg?raw=true"))),
              )),
          Positioned(
              top: _screenH / 30,
              left: _screenWidth / 1.9,
              child: Column(
                children: [
                  Text(
                    "Room 239: \nChemical Analysis Lab",
                    style: TextStyle(
                        fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: _screenH / 30,
                  ),
                  Text(
                    "The equipment avaiable: \n1.Scale\n2.Precision Cutter\n3.LCED\n4.Nitrogen gas Tank",
                    style: TextStyle(
                        fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: _screenH / 20,
                  ),
                  fancyBut(
                    pageTo: room239(),
                    icon: Icons.follow_the_signs_rounded,
                    buttonName: "Layout of the room",
                    height: _screenH / 10,
                    width: _screenWidth / 2.1,
                  )
                ],
              )),
          functionButtonMode(
              top: _screenH / 1.8,
              left: _screenWidth / 8,
              fontSize: 20,
              buttonName: "Test")
        ],
      ),
    );
  }
}
