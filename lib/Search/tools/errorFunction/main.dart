import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/errorFunction/data.dart';

class errorFunction extends StatefulWidget {
  errorFunction({Key? key}) : super(key: key);

  @override
  _errorFunctionState createState() => _errorFunctionState();
}

class _errorFunctionState extends State<errorFunction> {
  double _screenWidth = 0;
  double _screenH = 0;
  String output = '';
  double mod = 0;
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
    TextEditingController before = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.lightGreen[100],
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Erf Function"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 40,
                _screenWidth / 10, _screenH / 30),
            width: _screenWidth / 1.1,
            height: _screenH / 1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blueGrey.withOpacity(0.75),
              border: Border.all(width: 8, color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: _screenH / 45,
                ),
                Text(
                  "Find the output for erf function",
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _screenH / 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
                  width: _screenWidth / 1.1,
                  height: _screenH / 10,
                  child: TextField(
                    controller: before,
                    decoration: InputDecoration(hintText: "Put X:"),
                  ),
                ),
                SizedBox(
                  height: _screenH / 45,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        double input = double.parse(before.text);
                        double round =
                            double.parse(input.toStringAsExponential(0));
                        if (input < 1) {
                          mod = 0.05;
                        } else {
                          mod = 0.1;
                        }
                        if (round > input) {
                          output =
                              ((erf[round]! - erf[round - mod]!) / mod * input +
                                      erf[round]! -
                                      (erf[round]! - erf[round - mod]!) /
                                          mod *
                                          round)
                                  .toStringAsExponential(4);
                        } else {
                          print(round + mod);
                          output =
                              ((erf[round + mod]! - erf[round]!) / mod * input +
                                      erf[round + mod]! -
                                      (erf[round + mod]! - erf[round]!) /
                                          mod *
                                          (round + mod))
                                  .toStringAsExponential(4);
                        }
                      });
                    },
                    icon: Icon(Icons.calculate_rounded),
                    label: Text(
                      "Find erf value",
                      style: TextStyle(
                          fontSize: _screenH / 43, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: _screenH / 20,
                ),
                Container(
                  child: Text(
                    "The output for erf function is: \n" + (output ?? "--"),
                    style: TextStyle(
                        fontSize: _screenH / 29, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
