import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/equipment/saftyNoteText.dart';
import 'safyNoteVideo.dart';

class functionButtonMode extends StatefulWidget {
  final double top;
  final double left;
  final String buttonName;
  final double fontSize;
  final Widget pageTo;
  final String warnNote;
  final dynamic url;
  final String warnV;

  functionButtonMode(
      {@required this.top,
      @required this.left,
      @required this.buttonName,
      @optionalTypeArgs this.pageTo,
      @optionalTypeArgs this.fontSize,
      @optionalTypeArgs this.warnNote,
      @optionalTypeArgs this.url,
      @optionalTypeArgs this.warnV,
      Key key})
      : super(key: key);

  @override
  _functionButtonModeState createState() => _functionButtonModeState();
}

class _functionButtonModeState extends State<functionButtonMode> {
  double _screenWidth;
  double _screenH;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      child: InkWell(
        onTap: () {
          if (widget.warnNote != null) {
            showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return warning(
                      pageTo: widget.pageTo, warning_note: widget.warnNote);
                });
          } else if (widget.url != null) {
            return widget.url();
          } else if (widget.warnV != null) {
            showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return warningVideo(
                      pageTo: widget.pageTo, videoID: widget.warnV);
                });
          } else {
            Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 700),
                    child: widget.pageTo,
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter));
          }
        },
        splashColor: Colors.grey,
        child: Container(
          width: _screenWidth / 2.7,
          height: _screenH / 15,
          padding: EdgeInsets.all(6),
          child: Text(
            widget.buttonName,
            style: TextStyle(
                fontSize:
                    widget.fontSize != null ? widget.fontSize : _screenH / 50,
                fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black, width: 4)),
        ),
      ),
    );
  }
}
