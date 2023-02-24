import 'package:flutter/material.dart';

class auto_micro_HT_theory extends StatefulWidget {
  auto_micro_HT_theory({Key key}) : super(key: key);

  @override
  _auto_micro_HT_theoryState createState() => _auto_micro_HT_theoryState();
}

class _auto_micro_HT_theoryState extends State<auto_micro_HT_theory> {
  double _screenWidth = 0;
  double _screenH = 0;
  double tra = 0.02;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Introduction to Hardness"),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: _screenH / 35,
              left: _screenWidth / 30,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 3.2, height: _screenH / 18),
                child: Text(
                  "Hardness:",
                  style: TextStyle(
                      fontSize: _screenH / 40, fontWeight: FontWeight.w800),
                ),
              )),
          Positioned(
            top: _screenH / 15,
            left: _screenWidth / 30,
            child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.05, height: _screenH / 5),
                child: Text(
                  "•Defined as the resistance of metal to plastic deformation, ususally by intendetion. \n•Greater the hardness, greater the resistance to deformation. \n•Depend on ductility, elastic stiffness, plasticity, strain, strength, toughness, viscoelasticity and viscosity\n•Hardness property value is the result of a defined measurement procedure",
                  style: TextStyle(fontSize: _screenH / 65),
                )),
          ),
          Positioned(
              top: _screenH / 4.6,
              left: _screenWidth / 30,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.2, height: _screenH / 18),
                child: Text(
                  "Hardness Testing:",
                  style: TextStyle(
                      fontSize: _screenH / 40, fontWeight: FontWeight.w800),
                ),
              )),
          Positioned(
              top: _screenH / 4.4,
              left: _screenWidth / 30,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.05, height: _screenH / 5),
                child: Image(
                  image: AssetImage("assest/equipment/theory/HT.png"),
                ),
              ))
        ],
      )),
    );
  }
}
