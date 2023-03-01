import 'dart:math';

import 'package:flutter/material.dart';
import 'data.dart';

class STDCheck extends StatefulWidget {
  STDCheck({Key? key}) : super(key: key);

  @override
  _STDCheckState createState() => _STDCheckState();
}

class _STDCheckState extends State<STDCheck> {
  TextEditingController before = TextEditingController();
  TextEditingController meu = TextEditingController();
  TextEditingController sigma = TextEditingController();
  TextEditingController x = TextEditingController();
  TextEditingController sampn = TextEditingController();
  TextEditingController sampmean = TextEditingController();
  TextEditingController pcn = TextEditingController();
  TextEditingController pck = TextEditingController();
  double _screenWidth = 0;
  double _screenH = 0;
  String output = '';
  double mz = 0;
  String pc = '';
  double ci95 = 0;
  double ci99 = 0;
  double ci68 = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text("Stats Tool"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          SizedBox(
            height: _screenH / 25,
          ),
          Container(
              width: _screenWidth / 1.1,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                border: Border.all(width: 7, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(children: [
                SizedBox(
                  height: _screenH / 45,
                ),
                Text(
                  "Permutation and Combination",
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Image(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/PC.png?raw=true")),
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: pcn,
                    decoration:
                        InputDecoration(hintText: "n value (Sample #):"),
                  ),
                ),
                SizedBox(
                  height: _screenH / 45,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: pck,
                    decoration:
                        InputDecoration(hintText: "K value(Picking Value):"),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _screenWidth / 35,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          double nv = double.parse(pcn.text);
                          double kv = double.parse(pck.text);
                          double up = 1;
                          double below = 1;

                          setState(() {
                            for (var i = 1; i < nv + 1; i++) {
                              up = up * i;
                            }
                            for (var i = 1; i < (nv - kv) + 1; i++) {
                              below = below * i;
                            }
                            pc = (up / below).toString();
                          });
                        },
                        icon: Icon(Icons.calculate),
                        label: Text("Permutation")),
                    SizedBox(
                      width: _screenWidth / 18,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          double nv = double.parse(pcn.text);
                          double kv = double.parse(pck.text);
                          double up = 1;
                          double below = 1;
                          double add = 1;

                          setState(() {
                            for (var i = 1; i < nv + 1; i++) {
                              up = up * i;
                            }
                            for (var i = 1; i < (nv - kv) + 1; i++) {
                              below = below * i;
                            }
                            for (var i = 1; i < kv + 1; i++) {
                              add = add * i;
                            }
                            pc = (up / below / add).toString();
                          });
                        },
                        icon: Icon(Icons.calculate),
                        label: Text("Combination"))
                  ],
                ),
                SizedBox(
                  height: _screenH / 45,
                ),
                Container(
                  child: Text(
                    "The value is: " + (pc),
                    style: TextStyle(
                        fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                  ),
                )
              ])),
          SizedBox(
            height: _screenH / 25,
          ),
          Container(
            width: _screenWidth / 1.1,
            padding: EdgeInsets.fromLTRB(_screenWidth / 12, _screenH / 40,
                _screenWidth / 12, _screenH / 30),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                border: Border.all(width: 10, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 55,
                ),
                Text(
                  "Convert Z value to Standard Normal Distribution",
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: meu,
                    decoration: InputDecoration(hintText: "meu: Mean"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: x,
                    decoration: InputDecoration(
                        hintText: "X: Value you want to convert to"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: sigma,
                    decoration:
                        InputDecoration(hintText: "Sigma: Standard Deviation"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: sampn,
                    decoration:
                        InputDecoration(hintText: "Sample Number: optional"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: sampmean,
                    decoration:
                        InputDecoration(hintText: "Sample Mean: optional"),
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        double meuv = double.parse(meu.text);
                        double sigmav = double.parse(sigma.text);
                        double xv = double.parse(x.text);

                        double sn = double.parse(sampn.text);
                        double sm = double.parse(sampmean.text);
                        if (sn != null) {
                          mz = ((sm - xv) / sigmav / sqrt(sn));
                          ci68 = sigmav * 0.47 / sqrt(sn);
                          ci95 = sigmav * 1.96 / sqrt(sn);
                          ci99 = sigmav * 2.33 / sqrt(sn);
                        } else {
                          mz = ((xv - meuv) / sigmav);
                          ci68 = sigmav * 0.47;
                          ci95 = sigmav * 1.96;
                          ci99 = sigmav * 2.33;
                        }
                      });
                    },
                    icon: Icon(Icons.calculate_sharp),
                    label: Text("Calculate the Z value")),
                SizedBox(
                  height: _screenH / 35,
                ),
                Container(
                  child: Text(
                    "Z Value after modified: " +
                        ((mz).toStringAsExponential(2)),
                    style: TextStyle(
                        fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: _screenH / 35,
                ),
                Container(
                  width: _screenWidth / 1.3,
                  child: Text(
                    "The According Confidence Interval",
                    style: TextStyle(
                        fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: _screenH / 45,
                ),
                Column(
                  children: [
                    Container(
                      width: _screenWidth / 1.3,
                      child: Text(
                        "68% Confidence Interval: " +
                            (ci68).toStringAsExponential(2),
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: _screenH / 55,
                    ),
                    Container(
                      width: _screenWidth / 1.3,
                      child: Text(
                        "95% Confidence Interval: " +
                            (ci95).toStringAsExponential(2),
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: _screenH / 55,
                    ),
                    Container(
                      width: _screenWidth / 1.3,
                      child: Text(
                        "99% Confidence Interval: " +
                            (ci99).toStringAsExponential(2),
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Image(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/tools/norm.png?raw=true")),
                SizedBox(
                  height: _screenH / 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _screenH / 25,
          ),
          Container(
            width: _screenWidth / 1.1,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              border: Border.all(width: 7, color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 45,
                ),
                Text(
                  "Find the probablity density for score Z",
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Image(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/STD.png?raw=true")),
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: before,
                    decoration: InputDecoration(hintText: "Z value:"),
                  ),
                ),
                SizedBox(
                  height: _screenH / 45,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        double input = double.parse(before.text);
                        if (stdNum[input
                                .toString()
                                .substring(0, input.toString().length - 1)] ==
                            null) {
                          output = "Please correct your input";
                        } else {
                          output = stdNum[input.toString().substring(
                                      0, input.toString().length - 1)]![
                                  int.parse(input
                                      .toString()[input.toString().length - 1])]
                              .toString();
                        }
                      });
                    },
                    icon: Icon(Icons.calculate_rounded),
                    label: Text(
                      "Find STD value",
                      style: TextStyle(
                          fontSize: _screenH / 45, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: _screenH / 35,
                ),
                Container(
                  child: Text(
                    "The probablity density for Z value is: " + (output),
                    style: TextStyle(
                        fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: _screenH / 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: _screenH / 25,
          ),
        ]))));
  }
}
