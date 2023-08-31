import 'package:flutter/material.dart';

class green_Room extends StatefulWidget {
  green_Room({Key? key}) : super(key: key);

  @override
  _green_roomState createState() => _green_roomState();
}

class _green_roomState extends State<green_Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Room"),
        backgroundColor: Colors.green,
      ),
    );
  }
}
