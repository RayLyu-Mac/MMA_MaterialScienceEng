import 'package:flutter/material.dart';
import 'PressureU.dart';

class UnitCOnverMain extends StatefulWidget {
  UnitCOnverMain({Key key}) : super(key: key);

  @override
  _UnitCOnverMainState createState() => _UnitCOnverMainState();
}

class _UnitCOnverMainState extends State<UnitCOnverMain> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Conversion Tools"),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text("Common Letter Means (Take Pa as example)"),
                  Text("kPa=1e3 Pa"),
                  Text("mPa=1e6 Pa"),
                  Text("GPa=1e9 Pa")
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                    color: Colors.red, width: 6, style: BorderStyle.solid),
                left: BorderSide(
                    color: Colors.green, width: 6, style: BorderStyle.solid),
              )),
            ),
            unitC()
          ],
        ),
      ),
    );
  }
}
