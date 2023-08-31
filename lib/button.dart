import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const button({this.text, this.onClicked, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: onClicked,
      );
}
