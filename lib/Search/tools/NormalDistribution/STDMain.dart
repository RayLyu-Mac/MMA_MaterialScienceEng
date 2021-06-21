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
      appBar: AppBar(
        title: Text("STD value check"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TextField(
            controller: before,
            decoration: InputDecoration(hintText: "Z value:"),
          ),
          RaisedButton.icon(
              onPressed: () {
                setState(() {
                  double input = double.parse(before.text);
                  if (input > 3.4 || input < -3.4) {
                    output = "Please correct your input";
                  } else {
                    output = stdNum[input
                                .toString()
                                .substring(0, input.toString().length - 1)]
                            [input.toString().length]
                        .toString();
                  }
                });
              },
              icon: Icon(Icons.calculate_rounded),
              label: Text("Find STD value")),
          Container(
            child: Text(output ?? "--"),
            decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.grey[300])),
          )
        ],
      ),
    );
  }
}
