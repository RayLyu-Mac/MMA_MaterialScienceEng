import 'package:flutter/material.dart';
import 'data.dart';

class STDCheck extends StatefulWidget {
  STDCheck({Key key}) : super(key: key);

  @override
  _STDCheckState createState() => _STDCheckState();
}

class _STDCheckState extends State<STDCheck> {
  TextEditingController before = TextEditingController();
  double _screenWidth;
  double _screenH;
  String output;
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
          title: Text("STD value check"),
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
                  height: _screenH / 2,
                  padding: EdgeInsets.fromLTRB(_screenWidth / 10, _screenH / 30,
                      _screenWidth / 10, _screenH / 30),
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
                        "Convert Z value to Standard Normal Distribution",
                        style: TextStyle(
                            fontSize: _screenH / 35,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _screenH / 25,
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
