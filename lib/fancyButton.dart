import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class fancyBut extends StatefulWidget {
  final Widget pageTo;
  final IconData icon;
  final double width;
  final double height;
  final String buttonName;
  final double fontsize;
  fancyBut(
      {@required this.pageTo,
      @required this.width,
      @required this.height,
      @required this.icon,
      @required this.buttonName,
      @optionalTypeArgs this.fontsize,
      Key key})
      : super(key: key);

  @override
  _fancyButState createState() => _fancyButState();
}

class _fancyButState extends State<fancyBut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints.expand(width: widget.width, height: widget.height),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.height / 2),
          border: Border.all(color: Colors.grey[300], width: 5)),
      child: FlatButton.icon(
          splashColor: Colors.redAccent[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.height / 2),
          ),
          color: Colors.grey[600].withOpacity(0.8),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(milliseconds: 500),
                    child: widget.pageTo,
                    type: PageTransitionType.rightToLeft));
          },
          icon: Icon(
            widget.icon,
            color: Colors.white,
          ),
          label: Text(
            widget.buttonName,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: widget.fontsize ?? 14),
          )),
    );
  }
}
