import 'package:flutter/material.dart';

class unitC extends StatefulWidget {
  unitC({Key key}) : super(key: key);

  @override
  _unitCState createState() => _unitCState();
}

class _unitCState extends State<unitC> {
  double _screenWidth;
  double _screenH;
  double valuea;
  double finalV;
  double adjust;
  String dropdownValuea;
  String dropdownValueb;
  bool atm1 = false;
  bool psi1 = false;
  bool pa1 = false;
  bool bar1 = false;
  bool atm2 = false;
  bool psi2 = false;
  bool pa2 = false;
  bool bar2 = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  TextEditingController before = TextEditingController();
  TextEditingController after = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text("Unit Conversion for Common Unit"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.8)),
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 20,
                left: _screenWidth / 20,
                child: Container(
                  height: _screenH / 10,
                  width: _screenWidth / 1.5,
                  child: TextField(
                    controller: before,
                    decoration: InputDecoration(
                        hintText: "Please put the value you want to convert"),
                  ),
                )),
            Positioned(
                top: _screenH / 15,
                left: _screenWidth / 1.3,
                child: Container(
                  height: 30,
                  width: 80,
                  child: DropdownButton(
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 25,
                    elevation: 16,
                    value: dropdownValuea,
                    onChanged: (value) {
                      setState(() {
                        dropdownValuea = value;
                        switch (value) {
                          case "atm":
                            atm1 = true;
                            break;
                          case "bar":
                            bar1 = true;
                            break;
                          case "MPa":
                            pa1 = true;
                            break;
                          case "psi":
                            psi1 = true;
                            break;
                        }
                      });
                    },
                    items: <String>["atm", "bar", "MPa", "psi"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )),
            Positioned(
                top: _screenH / 7,
                left: _screenWidth / 1.3,
                child: Container(
                  height: 30,
                  width: 80,
                  child: DropdownButton(
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 25,
                    elevation: 16,
                    value: dropdownValueb,
                    onChanged: (value) {
                      setState(() {
                        dropdownValueb = value;
                        switch (value) {
                          case "atm":
                            atm2 = true;
                            break;
                          case "bar":
                            bar2 = true;
                            break;
                          case "MPa":
                            pa2 = true;
                            break;
                          case "psi":
                            psi2 = true;
                            break;
                        }
                      });
                    },
                    items: <String>["atm", "bar", "MPa", "psi"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )),
            Positioned(
                top: _screenH / 6,
                left: _screenWidth / 20,
                child: RaisedButton.icon(
                    onPressed: () {
                      double valuebef = double.parse(before.text);
                      if (atm1) {
                        valuea = valuebef * 101325 / 1000;
                        atm1 = false;
                      } else if (bar1) {
                        valuea = valuebef * 100;
                        bar1 = false;
                      } else if (psi1) {
                        valuea = valuebef * 6894.76 / 1000;
                        psi1 = false;
                      } else {
                        valuea = valuebef;
                      }
                      if (atm2) {
                        finalV = valuea / 101325 * 1000;
                        atm2 = false;
                      } else if (bar2) {
                        finalV = valuea / 100;
                        bar2 = false;
                      } else if (psi2) {
                        finalV = valuea / 6894.76 * 1000;
                        psi2 = false;
                      } else {
                        finalV = valuea;
                      }
                    },
                    icon: Icon(Icons.explicit_rounded),
                    label: Text("Convert"))),
            Positioned(
                top: _screenH / 3.5,
                left: _screenWidth / 20,
                child: Text(finalV.toString()))
          ],
        ),
      ),
    );
  }
}
