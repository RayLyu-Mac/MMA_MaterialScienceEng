import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';

class EnthalpyCal extends StatefulWidget {
  EnthalpyCal({Key key}) : super(key: key);

  @override
  _EnthalpyCalState createState() => _EnthalpyCalState();
}

class _EnthalpyCalState extends State<EnthalpyCal> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  String element;
  List eleD = [];
  String phase;
  String output;
  double j;
  TextEditingController tmin = TextEditingController();
  TextEditingController tmax = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.red[50],
        appBar: AppBar(
          title: Text("Enthalpy Calculation"),
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 20,
                _screenWidth / 20, _screenH / 20),
            width: _screenWidth / 1.1,
            padding: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 20,
                _screenWidth / 20, _screenH / 20),
            decoration: BoxDecoration(
                border: Border.all(width: 8, color: Colors.grey[50]),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: _screenWidth / 3,
                      height: _screenH / 12,
                      child: Text(
                        "Step 1: Choose the element",
                        style: TextStyle(
                            fontSize: _screenH / 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth / 15,
                    ),
                    Container(
                      width: _screenWidth / 3,
                      height: _screenH / 12,
                      child: DropdownButton(
                        isExpanded: true,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 25,
                        elevation: 16,
                        value: element,
                        onChanged: (value) {
                          setState(() {
                            element = value;
                            eleD = enthP[value];
                          });
                        },
                        items: enthP.keys
                            .toList()
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: _screenH / 15,
                ),
                Container(
                  child: Image(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/Formula.png?raw=true"),
                  ),
                ),
                SizedBox(
                  height: _screenH / 15,
                ),
                Row(
                  children: [
                    Container(
                      width: _screenWidth / 3,
                      height: _screenH / 12,
                      child: Text(
                        "Step 2: Set Temp Range",
                        style: TextStyle(
                            fontSize: _screenH / 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth / 15,
                    ),
                    Column(
                      children: [
                        Container(
                          width: _screenWidth / 3,
                          height: _screenH / 12,
                          child: TextField(
                            controller: tmin,
                            decoration: InputDecoration(hintText: "Lower Temp"),
                          ),
                        ),
                        SizedBox(
                          height: _screenH / 30,
                        ),
                        Container(
                          width: _screenWidth / 6,
                          height: _screenH / 35,
                          child: Text("To"),
                        ),
                        SizedBox(
                          height: _screenH / 30,
                        ),
                        Container(
                          width: _screenWidth / 3,
                          height: _screenH / 12,
                          child: TextField(
                            controller: tmax,
                            decoration:
                                InputDecoration(hintText: "Higher Temp"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: _screenH / 15,
                ),
                Container(
                  child: RaisedButton.icon(
                      onPressed: () {
                        setState(() {
                          double tempMin = double.parse(tmin.text);
                          double tempMax = double.parse(tmax.text);
                          List<double> difmin = [];
                          List<double> difmax = [];
                          int lowerB = 0;
                          int higherB = 0;
                          phase = '';
                          if (tempMin < eleD[0][0] ||
                              tempMax > eleD[1][eleD[1].length - 1]) {
                            output = "Please Check your value";
                          } else {
                            for (var i = 0; i < eleD[0].length; i++) {
                              difmin.add(abs((eleD[0][i] - tempMin)));
                              difmax.add(abs((eleD[1][i] - tempMax)));
                            }
                            lowerB = difmin.indexOf(difmin.reduce(min));
                            higherB = difmax.indexOf(difmax.reduce(min));
                            print(higherB - lowerB);
                            if (higherB - lowerB == 0 ||
                                higherB - lowerB == -1) {
                              if (tempMax == eleD[1][lowerB]) {
                                output = ((weirdStage(eleD, lowerB, tempMin,
                                                tempMax) +
                                            eleD[5][lowerB]) /
                                        1e3)
                                    .toStringAsExponential(4);
                                phase = phase + eleD[8][lowerB];
                                j = (weirdStage(
                                            eleD, lowerB, tempMin, tempMax) +
                                        eleD[5][lowerB]) /
                                    1e3;
                              } else {
                                j = (weirdStage(
                                        eleD, lowerB, tempMin, tempMax) /
                                    1e3);
                                output = (weirdStage(
                                            eleD, lowerB, tempMin, tempMax) /
                                        1e3)
                                    .toStringAsExponential(4);
                              }
                            } else {
                              print("S1: " + lowerB.toString());
                              double sum = 0;
                              sum = sum +
                                  iniStage(eleD, lowerB, tempMin) +
                                  eleD[5][lowerB];
                              print(eleD[8][lowerB]);
                              phase = phase + eleD[8][lowerB];
                              print("S1: " + sum.toString());
                              lowerB = lowerB + 1;
                              for (var k = 0; k < higherB - lowerB; k++) {
                                sum = sum + eleD[5][lowerB];
                                phase = phase + eleD[8][lowerB];
                                sum = sum + middleStage(eleD, lowerB + k);
                                lowerB = lowerB + 1;
                              }
                              print("S2: " + sum.toString());
                              print("S2: " + lowerB.toString());
                              print(eleD[8]);
                              if (tempMax == eleD[1][lowerB]) {
                                sum = sum +
                                    finalStage(eleD, lowerB, tempMax) +
                                    eleD[5][lowerB];
                                phase = phase + eleD[8][lowerB];
                              } else {
                                sum = sum + finalStage(eleD, lowerB, tempMax);
                              }
                              j = sum;
                              output = (sum / 1e3).toStringAsExponential(4);
                            }
                          }
                        });
                      },
                      icon: Icon(Icons.calculate_rounded),
                      label: Text("Calculate the enthalpy")),
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                  child: Text(
                    "The phase the " +
                        element +
                        " going through:" +
                        (phase ?? '--'),
                    style: TextStyle(
                        fontSize: _screenH / 48, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                  child: Text(
                    "The final Result is " +
                        (output ?? "-- ") +
                        " kCal/mol" +
                        "\n" +
                        (double.parse(output) * 4.1868)
                            .toStringAsExponential(4) +
                        "kJ/mol",
                    style: TextStyle(
                        fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: _screenH / 20,
                ),
                Container(
                  width: _screenWidth / 1.2,
                  height: _screenH / 12,
                  child: Text(
                    "Find the enthalpy",
                    style: TextStyle(
                        fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}

formula(a, b, c, t) {
  return a * t + b * 0.5 * 1e-3 * t * t - c * 1e5 / t;
}

finalStage(List eleD, int stage, double tmax) {
  return formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], tmax) -
      formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], eleD[0][stage]);
}

middleStage(List eleD, int stage) {
  return formula(
          eleD[2][stage], eleD[3][stage], eleD[4][stage], eleD[1][stage]) -
      formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], eleD[0][stage]);
}

iniStage(List eleD, int stage, double tmin) {
  return formula(
          eleD[2][stage], eleD[3][stage], eleD[4][stage], eleD[1][stage]) -
      formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], tmin);
}

weirdStage(List eleD, int stage, double tmin, double tmax) {
  return formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], tmax) -
      formula(eleD[2][stage], eleD[3][stage], eleD[4][stage], tmin);
}

abs(double value) {
  if (value < 0) {
    return 1e5;
  } else {
    return value;
  }
}
