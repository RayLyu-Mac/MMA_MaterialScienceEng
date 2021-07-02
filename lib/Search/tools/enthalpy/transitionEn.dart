import 'package:flutter/material.dart';
import 'data.dart';
import 'main.dart';

class TransEnthalpy extends StatefulWidget {
  TransEnthalpy({Key key}) : super(key: key);

  @override
  _TransEnthalpyState createState() => _TransEnthalpyState();
}

class _TransEnthalpyState extends State<TransEnthalpy> {
  double _screenWidth;
  double _screenH;
  String element;
  String transE;
  List eleD = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  TextEditingController tbefore = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            _screenWidth / 20, _screenH / 20, _screenWidth / 20, _screenH / 20),
        width: _screenWidth / 1.1,
        padding: EdgeInsets.fromLTRB(
            _screenWidth / 20, _screenH / 20, _screenWidth / 20, _screenH / 20),
        decoration: BoxDecoration(
            border: Border.all(width: 8, color: Colors.grey[50]),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              width: _screenWidth / 1.5,
              height: _screenH / 12,
              child: Text(
                "Find Transformation Energy",
                style: TextStyle(
                    fontSize: _screenH / 35, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: _screenWidth / 1.5,
              height: _screenH / 4,
              child: Text(
                "During material processing, it is possible that the material will melt under the melting point. If that happens, the material will become liquid even below the melting temperature but the enthalpy it needed for phase transformation will be different in the normal melting condition.",
                style: TextStyle(
                    fontSize: _screenH / 45, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  width: _screenWidth / 3,
                  height: _screenH / 12,
                  child: Text(
                    "Step 1: Choose the element",
                    style: TextStyle(
                        fontSize: _screenH / 35, fontWeight: FontWeight.bold),
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
                    items: <String>["FeS", "SiO2", "FeO", "Cu2S", "Cu2O"]
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
              width: _screenWidth / 3,
              height: _screenH / 12,
              child: TextField(
                controller: tbefore,
                decoration:
                    InputDecoration(hintText: "Temp under Melting Point"),
              ),
            ),
            RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    double tl = double.parse(tbefore.text);
                    double meltT = eleD[1][eleD[1].length - 2];
                    print(eleD[1].length - 2);
                    transE = ((weirdStage(eleD, eleD[1].length - 2, tl, meltT) +
                                eleD[5][eleD[1].length - 2] -
                                weirdStage(
                                    eleD, eleD[1].length - 1, tl, meltT)) /
                            1e3)
                        .toStringAsExponential(4);
                  });
                },
                icon: Icon(Icons.calculate),
                label: Text("calculate the enthalpy")),
            SizedBox(
              height: _screenH / 15,
            ),
            Container(
              child: Text(
                "The final Result is " + (transE ?? "--") + " kCal",
                style: TextStyle(
                    fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}
