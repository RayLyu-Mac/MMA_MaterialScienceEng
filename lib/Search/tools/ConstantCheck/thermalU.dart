import 'package:flutter/material.dart';

class thermalUC extends StatefulWidget {
  thermalUC({Key key}) : super(key: key);

  @override
  _thermalUCState createState() => _thermalUCState();
}

class _thermalUCState extends State<thermalUC> {
  double _screenWidth = 0;
  double _screenH = 0;
  double valuea = 0;
  double finalV = 0;
  double finalVt = 0;
  double adjust = 0;
  String dropdownValuea = 'J';
  String dropdownValueb = 'J';
  String dropdownValueat = 'Kelvin';
  String dropdownValuebt = 'Kelvin';

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
    return Column(
      children: [
        Container(
          height: _screenH / 2,
          width: _screenWidth / 1.15,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              border: Border.all(width: 5, color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Positioned(
                  top: _screenH / 35,
                  left: _screenWidth / 9,
                  child: Text("Thermal unit conversion",
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
                      items: <String>["J", "cal"]
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
                      items: <String>["J", "cal"]
                          .map<DropdownMenuItem<String>>((String value) {
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
                  child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          double valuebef = double.parse(before.text);
                          if (dropdownValuea == "cal") {
                            valuea = valuebef * 0.239005736;
                          } else {
                            valuea = valuebef;
                          }
                          if (dropdownValueb == "cal") {
                            finalV = valuea / 0.239005736;
                          } else {
                            finalV = valuea;
                          }
                        });
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
        ),
        SizedBox(
          height: _screenH / 40,
        ),
        Container(
          height: _screenH / 2,
          width: _screenWidth / 1.15,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              border: Border.all(width: 5, color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Positioned(
                  top: _screenH / 35,
                  left: _screenWidth / 15,
                  child: Text("Temp unit conversion",
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
                      controller: after,
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
                      value: dropdownValueat,
                      onChanged: (var valueB) {
                        setState(
                          () {
                            dropdownValueat = valueB;
                          },
                        );
                      },
                      items: <String>["Celsius", "Kelvin", "Fahrenheit"]
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
                      value: dropdownValuebt,
                      onChanged: (value) {
                        setState(() {
                          dropdownValuebt = value;
                        });
                      },
                      items: <String>["Celsius", "Kelvin", "Fahrenheit"]
                          .map<DropdownMenuItem<String>>((String value) {
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
                  child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          double valuebef = double.parse(after.text);
                          if (dropdownValueat == "Kelvin") {
                            valuea = valuebef - 273.15;
                          } else if (dropdownValueat == "Fahrenheit") {
                            valuea = (valuebef - 32) / 1.8;
                          } else {
                            valuea = valuebef;
                          }
                          if (dropdownValuebt == "Kelvin") {
                            finalVt = valuea + 273.15;
                          } else if (dropdownValueat == "Fahrenheit") {
                            finalVt = valuea * 1.8 + 32;
                          } else {
                            finalVt = valuea;
                          }
                        });
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
                          (finalVt != null
                              ? "\n" +
                                  finalVt.toStringAsExponential(3) +
                                  "  " +
                                  dropdownValuebt
                              : " --"),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
