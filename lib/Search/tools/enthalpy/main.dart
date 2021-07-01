import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';

class EnthalpyCal extends StatefulWidget {
  EnthalpyCal({Key key}) : super(key: key);

  @override
  _EnthalpyCalState createState() => _EnthalpyCalState();
}

class _EnthalpyCalState extends State<EnthalpyCal> {
  String element;
  List eleD = [];
  String output;
  TextEditingController tmin = TextEditingController();
  TextEditingController tmax = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enthalpy Calculation"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          DropdownButton(
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
          Container(
            child: TextField(
              controller: tmin,
              decoration: InputDecoration(hintText: "Lower Temp"),
            ),
          ),
          Container(
            child: TextField(
              controller: tmax,
              decoration: InputDecoration(hintText: "Higher Temp"),
            ),
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
                      if (higherB - lowerB == 0 || higherB - lowerB == -1) {
                        if (tempMax == eleD[1][lowerB]) {
                          output = (middleStage(eleD, lowerB) + eleD[5][lowerB])
                              .toString();
                        } else {
                          output = finalStage(eleD, lowerB, tempMax).toString();
                        }
                      } else {
                        print("S1: " + lowerB.toString());
                        double sum = 0;
                        sum = sum +
                            iniStage(eleD, lowerB, tempMin) +
                            eleD[5][lowerB];
                        print("S1: " + sum.toString());
                        lowerB = lowerB + 1;
                        for (var k = 0; k < higherB - lowerB; k++) {
                          sum = sum + eleD[5][lowerB];

                          sum = sum + middleStage(eleD, lowerB + k);
                          lowerB = lowerB + 1;
                        }
                        print("S2: " + sum.toString());
                        print("S2: " + lowerB.toString());
                        if (tempMax == eleD[1][lowerB]) {
                          sum = sum +
                              finalStage(eleD, lowerB, tempMax) +
                              eleD[5][lowerB];
                        } else {
                          sum = sum + finalStage(eleD, lowerB, tempMax);
                        }

                        output = sum.toString();
                      }
                    }
                  });
                },
                icon: Icon(Icons.calculate_rounded),
                label: Text("Calculate the enthalpy")),
          ),
          Container(
            child: Text(output ?? "Wait"),
          )
        ],
      ),
    );
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

abs(double value) {
  if (value < 0) {
    return 1e5;
  } else {
    return value;
  }
}
