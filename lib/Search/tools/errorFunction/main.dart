import 'package:flutter/material.dart';
import 'package:mma_mse/Search/tools/errorFunction/data.dart';

class errorFunction extends StatefulWidget {
  errorFunction({Key key}) : super(key: key);

  @override
  _errorFunctionState createState() => _errorFunctionState();
}

class _errorFunctionState extends State<errorFunction> {
  double _screenWidth;
  double _screenH;
  String output;
  double mod;
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
        appBar: AppBar(
          title: Text("Erf Function"),
        ),
        body: Container(
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
                    fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
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
              RaisedButton.icon(
                  padding: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 50,
                      _screenWidth / 20, _screenH / 50),
                  shape: Border.all(width: 5, color: Colors.grey[700]),
                  onPressed: () {
                    setState(() {
                      double input = double.parse(before.text);
                      double round = num.parse(input.toStringAsExponential(0));
                      if (input < 1) {
                        mod = 0.05;
                        print("A");
                      } else {
                        mod = 0.1;
                      }
                      if (round > input) {
                        output = ((erf[round] - erf[round - mod]) /
                                    mod *
                                    input +
                                erf[round] -
                                (erf[round] - erf[round - mod]) / mod * round)
                            .toString();
                      } else {
                        output = ((erf[round] - erf[round + mod]) /
                                    -1 *
                                    mod *
                                    input +
                                erf[round] -
                                (erf[round] - erf[round + mod]) /
                                    -1 *
                                    mod *
                                    round)
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
                height: _screenH / 45,
              ),
              Container(
                child: Text(
                  "The Probabalilty Density with Z score " +
                          before.text.toString() ??
                      "--" + " is " + output ??
                      "--",
                  style: TextStyle(
                      fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
