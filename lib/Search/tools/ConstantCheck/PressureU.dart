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
    return Container(
      height: _screenH / 1.5,
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
                  onChanged: (var valueB) {
                    setState(
                      () {
                        dropdownValuea = valueB;
                      },
                    );
                  },
                  items: <String>["atm", "bar", "MPa", "Psi"]
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
                    });
                  },
                  items: <String>["atm", "bar", "MPa", "Psi"]
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
                    if (dropdownValuea == "atm") {
                      valuea = valuebef * 101325 / 1000;
                    } else if (dropdownValuea == "bar") {
                      valuea = valuebef * 100;
                    } else if (dropdownValuea == "Psi") {
                      valuea = valuebef * 6894.76 / 1000;
                    } else {
                      valuea = valuebef;
                    }
                    if (dropdownValueb == "atm") {
                      finalV = valuea / 101325 * 1000;
                    } else if (dropdownValueb == "bar") {
                      finalV = valuea / 100;
                    } else if (dropdownValueb == "Psi") {
                      finalV = valuea / 6894.76 * 1000;
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
    );
  }
}
