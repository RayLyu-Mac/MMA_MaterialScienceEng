import 'package:flutter/material.dart';

class eyewashStation extends StatefulWidget {
  eyewashStation({Key key}) : super(key: key);

  @override
  _eyewashStationState createState() => _eyewashStationState();
}

class _eyewashStationState extends State<eyewashStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eyewash station avaibale in MSE"),
      ),
    );
  }
}
