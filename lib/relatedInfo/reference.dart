import 'package:flutter/material.dart';
import 'referenceData.dart';

class reference extends StatefulWidget {
  reference({Key? key}) : super(key: key);

  @override
  _referenceState createState() => _referenceState();
}

class _referenceState extends State<reference> {
  double _screenWidth = 0;
  double _screenH = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.85;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("Reference for the app"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: _screenH / 15,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25, 8, 25, 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 6, color: Colors.grey.shade200)),
                width: _screenWidth / 1.3,
                child: Text(
                    "Please check the following web link to find the pictures that are used in this app."),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              for (var i = 0; i < refernceD.length; i++)
                Container(
                  width: _screenWidth / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 6, color: Colors.grey.shade200)),
                  padding: EdgeInsets.fromLTRB(25, 8, 25, 8),
                  child: Column(
                    children: [
                      Container(
                        width: _screenWidth / 1.3,
                        height: _screenH / 20,
                        child: Text(
                          "Section: " + refernceD.keys.toList()[i],
                          style: TextStyle(
                              fontSize: _screenH / 32,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _screenH / 35,
                      ),
                      Container(
                          width: _screenWidth / 1.2,
                          child: Column(
                            children: [
                              for (var j = 0;
                                  j < refernceD.values.toList()[i].length;
                                  j++)
                                Container(
                                  width: _screenWidth / 1.2,
                                  child: Text((j + 1).toString() +
                                      ". " +
                                      refernceD.values.toList()[i][j]),
                                ),
                              SizedBox(
                                height: _screenH / 35,
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              SizedBox(
                height: _screenH / 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
