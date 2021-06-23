import 'package:flutter/material.dart';
import 'referenceData.dart';

class reference extends StatefulWidget {
  reference({Key key}) : super(key: key);

  @override
  _referenceState createState() => _referenceState();
}

class _referenceState extends State<reference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reference for the app"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
