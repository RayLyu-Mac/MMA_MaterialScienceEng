import 'package:flutter/material.dart';

class ScrollcustomListTile extends StatelessWidget {
  const ScrollcustomListTile(
      {this.name,
      this.pageTo,
      this.fonts,
      this.controller,
      this.offset,
      this.tileColor,
      this.padTop,
      key});
  final String name;
  final int pageTo;
  final double fonts;
  final double offset;
  final double padTop;
  final Color tileColor;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      margin: EdgeInsets.only(top: padTop ?? 0),
      decoration: BoxDecoration(
        color: tileColor ?? Colors.transparent,
      ),
      child: InkWell(
        splashColor: Colors.blue[100],
        onTap: () => {
          print(pageTo * (offset ?? 300.0)),
          controller.animateTo(pageTo * (offset ?? 300.0),
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut)
        },
        child: Wrap(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 9),
              child: Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fonts,
                    color: Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
