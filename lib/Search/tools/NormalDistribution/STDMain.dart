import 'package:flutter/material.dart';
import 'data.dart';

class STDCheck extends StatefulWidget {
  STDCheck({Key key}) : super(key: key);

  @override
  _STDCheckState createState() => _STDCheckState();
}

class _STDCheckState extends State<STDCheck> {
  TextEditingController before = TextEditingController();
  TextEditingController meu = TextEditingController();
  TextEditingController sigma = TextEditingController();
  TextEditingController x = TextEditingController();
  TextEditingController pcn = TextEditingController();
  TextEditingController pck = TextEditingController();
  double _screenWidth;
  double _screenH;
  String output;
  String mz;
  String pc;
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
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text("Stats Tool"),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                  width: _screenWidth / 1.1,
                  height: _screenH / 1.6,
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 40,
                      _screenWidth / 10, _screenH / 30),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(width: 7, color: Colors.grey[200]),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _screenH / 55,
                      ),
                      Text(
                        "Convert Z value to Standard Normal Distribution",
                        style: TextStyle(
                            fontSize: _screenH / 45,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
                        width: _screenWidth / 1.1,
                        height: _screenH / 10,
                        child: TextField(
                          controller: meu,
                          decoration: InputDecoration(hintText: "meu: Mean"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
                        width: _screenWidth / 1.1,
                        height: _screenH / 10,
                        child: TextField(
                          controller: x,
                          decoration: InputDecoration(
                              hintText: "X: Value you want to convert to"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
                        width: _screenWidth / 1.1,
                        height: _screenH / 10,
                        child: TextField(
                          controller: sigma,
                          decoration: InputDecoration(
                              hintText: "Sigma: Standard Deviation"),
                        ),
                      ),
                      RaisedButton.icon(
                          onPressed: () {
                            setState(() {
                              double meuv = double.parse(meu.text);
                              double sigmav = double.parse(sigma.text);
                              double xv = double.parse(x.text);
                              mz = ((xv - meuv) / sigmav).toString();
                            });
                          },
                          icon: Icon(Icons.calculate_sharp),
                          label: Text("Calculate the Z value")),
                      SizedBox(
                        height: _screenH / 45,
                      ),
                      Container(
                        child: Text(
                          "The Z score after standardized" + mz.toString() ??
                              "--" + " is " + mz ??
                              "--",
                          style: TextStyle(
                              fontSize: _screenH / 50,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenH / 25,
                ),
                Container(
                    width: _screenWidth / 1.1,
                    height: _screenH / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      border: Border.all(width: 7, color: Colors.grey[200]),
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: _screenH / 45,
                      ),
                      Text(
                        "Permutation and Combination",
                        style: TextStyle(
                            fontSize: _screenH / 35,
                            fontWeight: FontWeight.bold),
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
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
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
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
                        width: _screenWidth / 1.1,
                        height: _screenH / 10,
                        child: TextField(
                          controller: pck,
                          decoration: InputDecoration(
                              hintText: "K value(Picking Value):"),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: _screenWidth / 18,
                          ),
                          RaisedButton.icon(
                              onPressed: () {
                                double nv = double.parse(pcn.text);
                                double kv = double.parse(pck.text);
                                double up = 1;
                                double below = 1;
                                for (var i = 1; i < nv + 1; i++) {
                                  up = up * i;
                                }
                                for (var i = 1; i < (nv - kv) + 1; i++) {
                                  below = below * i;
                                }
                                pc = (up / below).toString();
                              },
                              icon: Icon(Icons.calculate),
                              label: Text("Permutation")),
                          SizedBox(
                            width: _screenWidth / 10,
                          ),
                          RaisedButton.icon(
                              onPressed: () {
                                double nv = double.parse(pcn.text);
                                double kv = double.parse(pck.text);
                                double up = 1;
                                double below = 1;
                                double add = 1;
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
                                print(pc);
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
                          "The value" + " is " + pc,
                          style: TextStyle(
                              fontSize: _screenH / 50,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ])),
                SizedBox(
                  height: _screenH / 45,
                ),
                Container(
                  width: _screenWidth / 1.1,
                  height: _screenH / 1.3,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(width: 7, color: Colors.grey[200]),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _screenH / 45,
                      ),
                      Text(
                        "Find the probablity density for score Z",
                        style: TextStyle(
                            fontSize: _screenH / 35,
                            fontWeight: FontWeight.bold),
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
                        padding: EdgeInsets.fromLTRB(_screenWidth / 10,
                            _screenH / 30, _screenWidth / 10, _screenH / 30),
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
                      RaisedButton.icon(
                          padding: EdgeInsets.fromLTRB(_screenWidth / 20,
                              _screenH / 50, _screenWidth / 20, _screenH / 50),
                          shape: Border.all(width: 5, color: Colors.grey[700]),
                          onPressed: () {
                            setState(() {
                              double input = double.parse(before.text);
                              if (stdNum[input.toString().substring(
                                      0, input.toString().length - 1)] ==
                                  null) {
                                output = "Please correct your input";
                              } else {
                                output = stdNum[input.toString().substring(
                                                0, input.toString().length - 1)]
                                            [input.toString().length]
                                        .toString() ??
                                    "Please correct your input";
                              }
                            });
                          },
                          icon: Icon(Icons.calculate_rounded),
                          label: Text(
                            "Find STD value",
                            style: TextStyle(
                                fontSize: _screenH / 45,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: _screenH / 45,
                      ),
                      Container(
                        child: Text(
                          "The Probabalilty Density with Z score " +
                                  before.text.toString() ??
                              "--" + " is " + output ??
                              "--",
                          style: TextStyle(
                              fontSize: _screenH / 40,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
