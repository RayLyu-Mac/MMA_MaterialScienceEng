import 'dart:math';
import 'package:mma_mse/Search/tools/phaseDiagram/zoomIn.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'package:page_transition/page_transition.dart';
import 'transitionEn.dart';

class EnthalpyCal extends StatefulWidget {
  EnthalpyCal({Key? key}) : super(key: key);

  @override
  _EnthalpyCalState createState() => _EnthalpyCalState();
}

class _EnthalpyCalState extends State<EnthalpyCal> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  String element = 'FeS';
  List eleD = [];
  String phase = '1';
  String output = '1';
  double finalRe = 1;
  TextEditingController tmin = TextEditingController();
  TextEditingController tmax = TextEditingController();
  TextEditingController mass = TextEditingController();
  TextEditingController mol = TextEditingController();
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
                child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 20,
                  _screenWidth / 20, _screenH / 20),
              width: _screenWidth / 1.1,
              padding: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 20,
                  _screenWidth / 20, _screenH / 20),
              decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.grey.shade100),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: _screenWidth / 3,
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
                              element = value!;
                              eleD = enthP[value]!;
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
                              decoration:
                                  InputDecoration(hintText: "Lower Temp"),
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
                    child: ElevatedButton.icon(
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
                                } else {
                                  output = (weirdStage(
                                              eleD, lowerB, tempMin, tempMax) /
                                          1e3)
                                      .toStringAsExponential(4);
                                }
                              } else {
                                double sum = 0;
                                sum = sum +
                                    iniStage(eleD, lowerB, tempMin) +
                                    eleD[5][lowerB];

                                phase = phase + eleD[8][lowerB];

                                lowerB = lowerB + 1;
                                for (var k = 0; k < higherB - lowerB; k++) {
                                  sum = sum + eleD[5][lowerB];
                                  phase = phase + eleD[8][lowerB];
                                  sum = sum + middleStage(eleD, lowerB + k);
                                  lowerB = lowerB + 1;
                                }

                                if (tempMax == eleD[1][lowerB]) {
                                  sum = sum +
                                      finalStage(eleD, lowerB, tempMax) +
                                      eleD[5][lowerB];
                                  phase = phase + eleD[8][lowerB];
                                } else {
                                  sum = sum + finalStage(eleD, lowerB, tempMax);
                                }

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
                          (element ?? "-") +
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
                          (((double.parse(output ?? "0") * 4.1868) ?? 0)
                              .toStringAsExponential(4)) +
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
                  Row(
                    children: [
                      SizedBox(
                        width: _screenWidth / 25,
                      ),
                      Container(
                        width: _screenWidth / 4,
                        height: _screenH / 12,
                        child: TextField(
                          controller: mass,
                          decoration: InputDecoration(hintText: "   Mass"),
                        ),
                      ),
                      SizedBox(
                        width: _screenWidth / 15,
                      ),
                      Container(
                        width: _screenWidth / 15,
                        height: _screenH / 35,
                        child: Text(
                          "or",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: _screenH / 40),
                        ),
                      ),
                      SizedBox(
                        width: _screenWidth / 15,
                      ),
                      Container(
                        width: _screenWidth / 4,
                        height: _screenH / 12,
                        child: TextField(
                          controller: mol,
                          decoration: InputDecoration(
                              hintText: "   Mol", alignLabelWithHint: true),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          double massc = double.parse(mass.text);
                          double molc = double.parse(mol.text);
                          if (massc > 0) {
                            finalRe = massc / eleD[7] * double.parse(output);
                          } else {
                            finalRe = 0;
                          }
                          if (molc > 0) {
                            finalRe = molc * double.parse(output);
                          } else {
                            finalRe = 0;
                          }
                        });
                      },
                      icon: Icon(Icons.calculate),
                      label: Text("Calculate")),
                  SizedBox(
                    height: _screenH / 25,
                  ),
                  Container(
                    child: Text(
                      "The final Result is " +
                          ((finalRe ?? 0).toStringAsExponential(4)) +
                          " kCal" +
                          "\n" +
                          ((finalRe ?? 0) * 4.1868).toStringAsExponential(4) +
                          "kJ",
                      style: TextStyle(
                          fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: _screenH / 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: _screenWidth / 1.6,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.table_view_rounded),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 700),
                                  child: ZoomInPhaseD(
                                    imgPD:
                                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/table.png?raw=true",
                                  )));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            TransEnthalpy()
          ],
        ))));
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
