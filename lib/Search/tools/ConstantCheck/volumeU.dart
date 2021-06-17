import 'package:flutter/material.dart';

class VolumeUC extends StatefulWidget {
  VolumeUC({Key key}) : super(key: key);

  @override
  _VolumeUCState createState() => _VolumeUCState();
}

class _VolumeUCState extends State<VolumeUC> {
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
      height: _screenH / 2,
      width: _screenWidth / 1.15,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          border: Border.all(width: 5, color: Colors.grey[100]),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              top: _screenH / 35,
              left: _screenWidth / 9,
              child: Text("Volume unit conversion",
                  style: TextStyle(
                    fontSize: _screenH / 30,
                    fontWeight: FontWeight.bold,
                  ))),
          Positioned(
              top: _screenH / 9,
              left: _screenWidth / 20,
              child: Container(
                height: _screenH / 10,
                width: _screenWidth / 2.2,
                child: TextField(
                  controller: before,
                  decoration: InputDecoration(hintText: "Value Before"),
                ),
              )),
          Positioned(
              top: _screenH / 9,
              left: _screenWidth / 1.8,
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
                  items: <String>["cm^3", "L", "m^3", "oz", "pt", "gal"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )),
          Positioned(
              top: _screenH / 5,
              left: _screenWidth / 1.8,
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
                  items: <String>[
                    "cm^3",
                    "L",
                    "m^3",
                    "oz",
                    "pt",
                    "gal (American)"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )),
          Positioned(
              top: _screenH / 4,
              left: _screenWidth / 20,
              child: RaisedButton.icon(
                  onPressed: () {
                    double valuebef = double.parse(before.text);
                    if (dropdownValuea == "cm^3") {
                      valuea = valuebef / 1000;
                    } else if (dropdownValuea == "m^3") {
                      valuea = valuebef * 1000;
                    } else if (dropdownValuea == "oz") {
                      valuea = valuebef * 0.02957;
                    } else if (dropdownValuea == "pt") {
                      valuea = valuebef * 0.47318;
                    } else if (dropdownValuea == "gal (American)") {
                      valuea = valuebef * 3.78541178;
                    } else {
                      valuea = valuebef;
                    }

                    if (dropdownValueb == "cm^3") {
                      finalV = valuea * 1000;
                    } else if (dropdownValueb == "m^3") {
                      finalV = valuea / 1000;
                    } else if (dropdownValueb == "oz") {
                      finalV = valuea / 0.02957;
                    } else if (dropdownValueb == "pt") {
                      finalV = valuea / 0.47318;
                    } else if (dropdownValueb == "gal (American)") {
                      finalV = valuea / 3.78541178;
                    } else {
                      finalV = valuea;
                    }
                  },
                  icon: Icon(Icons.explicit_rounded),
                  label: Text("Convert"))),
          Positioned(
              top: _screenH / 2.8,
              left: _screenWidth / 20,
              child: Container(
                width: _screenWidth / 1.3,
                child: Text(
                  "The converted value is:" +
                      (finalV != null
                          ? "\n" +
                              finalV.toStringAsExponential(3) +
                              "  " +
                              dropdownValueb
                          : " --"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
