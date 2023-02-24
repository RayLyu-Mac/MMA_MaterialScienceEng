import 'package:flutter/material.dart';

class acidQuiz extends StatefulWidget {
  acidQuiz({Key? key}) : super(key: key);

  @override
  _acidQuizState createState() => _acidQuizState();
}

class _acidQuizState extends State<acidQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Final Quiz before Proceeding"),
      ),
    );
  }
}
