import 'package:flutter/material.dart';

class LengthUC extends StatefulWidget {
  LengthUC({Key? key}) : super(key: key);

  @override
  _LengthUCCState createState() => _LengthUCCState();
}

class _LengthUCCState extends State<LengthUC> {
  double _screenWidth = 0;
  double _screenH = 0;
  double valuea = 0;
  double finalV = 0;
  double adjust = 0;
  String dropdownValuea = '';
  String dropdownValueb = '';

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
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          border: Border.all(width: 5, color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(15)),
      height: _screenH / 2,
      width: _screenWidth / 1.15,
      child: Stack(
        children: [
          Positioned(
              top: _screenH / 35,
              left: _screenWidth / 15,
              child: Text("Length unit conversion",
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
                        dropdownValuea = valueB!;
                      },
                    );
                  },
                  items: <String>["m", "mm", "km", "in", "ft", "yd", "mile"]
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
                      dropdownValueb = value!;
                    });
                  },
                  items: <String>["m", "mm", "km", "in", "ft", "yd", "mile"]
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
                      if (dropdownValuea == "mm") {
                        valuea = valuebef / 1000;
                      } else if (dropdownValuea == "km") {
                        valuea = valuebef * 1000;
                      } else if (dropdownValuea == "in") {
                        valuea = valuebef / 39.37;
                      } else if (dropdownValuea == "ft") {
                        valuea = valuebef * 0.3048;
                      } else if (dropdownValuea == "yd") {
                        valuea = valuebef * 0.9144;
                      } else if (dropdownValuea == "mile") {
                        valuea = valuebef * 1609.34;
                      } else {
                        valuea = valuebef;
                      }

                      if (dropdownValueb == "mm") {
                        finalV = valuea * 1000;
                      } else if (dropdownValueb == "km") {
                        finalV = valuea / 1000;
                      } else if (dropdownValueb == "in") {
                        finalV = valuea * 39.37;
                      } else if (dropdownValueb == "ft") {
                        finalV = valuea / 0.3048;
                      } else if (dropdownValueb == "yd") {
                        finalV = valuea / 0.9144;
                      } else if (dropdownValueb == "mile") {
                        finalV = valuea / 1609.34;
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
    );
  }
}
