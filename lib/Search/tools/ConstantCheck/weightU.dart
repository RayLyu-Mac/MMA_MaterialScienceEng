import 'package:flutter/material.dart';

class WeightUC extends StatefulWidget {
  WeightUC({Key? key}) : super(key: key);

  @override
  _WeightUCState createState() => _WeightUCState();
}

class _WeightUCState extends State<WeightUC> {
  double _screenWidth = 0;
  double _screenH = 0;
  double valuea = 0;
  double finalV = 0;
  double adjust = 0;
  String dropdownValuea = 'kg';
  String dropdownValueb = 'kg';

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
      height: _screenH / 1.9,
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
              child: Text("Weight unit conversion",
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
                  items: <String>["t", "kg", "mg", "oz", "lb"]
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
                  items: <String>["t", "kg", "mg", "oz", "lb"]
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
                      if (dropdownValuea == "mg") {
                        valuea = valuebef / 1e6;
                      } else if (dropdownValuea == "t") {
                        valuea = valuebef * 1000;
                      } else if (dropdownValuea == "oz") {
                        valuea = valuebef * 28.35 / 1000;
                      } else if (dropdownValuea == "lb") {
                        valuea = valuebef * 453.59 / 1000;
                      } else {
                        valuea = valuebef;
                      }

                      if (dropdownValueb == "mg") {
                        finalV = valuea * 1e6;
                      } else if (dropdownValueb == "t") {
                        finalV = valuea / 1000;
                      } else if (dropdownValueb == "oz") {
                        finalV = valuea / 28.35 / 1000;
                      } else if (dropdownValueb == "lb") {
                        finalV = valuea / 453.59 / 1000;
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
              )),
          Positioned(
              top: _screenH / 2.2,
              left: _screenWidth / 20,
              child: Container(
                width: _screenWidth / 1.3,
                child: Text(
                  "Mass for an electron: 9.109e-31kg\nMass for a proton: 1.673e-27kg",
                  style: TextStyle(
                      fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
