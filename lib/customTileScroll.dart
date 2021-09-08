import 'package:flutter/material.dart';

class ScrollcustomListTile extends StatelessWidget {
  const ScrollcustomListTile(
      {@required this.name,
      @required this.pageTo,
      @required this.fonts,
      @required this.controller,
      @optionalTypeArgs this.offset,
      key})
      : super(key: key);
  final String name;
  final int pageTo;
  final double fonts;
  final double offset;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey[100]))),
      child: InkWell(
        splashColor: Colors.blue[100],
        onTap: () => {
          controller.animateTo(pageTo * (offset != null ? offset : 300.0),
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
