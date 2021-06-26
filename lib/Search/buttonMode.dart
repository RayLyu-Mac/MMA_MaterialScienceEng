import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class IntroButtonMode extends StatefulWidget {
  IntroButtonMode(
      {@required this.pageTo,
      @required this.backImg,
      @optionalTypeArgs this.title,
      @optionalTypeArgs this.top,
      @optionalTypeArgs this.left,
      @optionalTypeArgs this.fontsize,
      @optionalTypeArgs this.length,
      @optionalTypeArgs this.width,
      @optionalTypeArgs this.positionCode,
      @required this.str,
      Key key})
      : super(key: key);
  final Widget pageTo;
  final String backImg;
  final String title;
  final double fontsize;
  final double top;
  final double left;
  final double width;
  final double length;
  final String positionCode;
  final bool str;

  @override
  _IntroButtonModeState createState() => _IntroButtonModeState();
}

class _IntroButtonModeState extends State<IntroButtonMode> {
  double _screenWidth;
  double _screenH;
  // (page1(),page2(),page3(),page4()) //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, List> position = {
      "a": [_screenWidth / 19, _screenH / 50, _screenH / 2.8],
      "b": [_screenWidth / 1.9, _screenH / 50, _screenH / 5],
      "c": [_screenWidth / 1.9, _screenH / 4.2, _screenH / 2.8],
      "d": [_screenWidth / 19, _screenH / 2.5, _screenH / 5],
      "e": [_screenWidth / 1.9, _screenH / 1.6, _screenH / 5],
      "f": [_screenWidth / 19, _screenH / 2.6, _screenH / 5]
    };
    return widget.str != false
        ? Positioned(
            left: position[widget.positionCode][0] ?? widget.top,
            top: position[widget.positionCode][1] ?? widget.left,
            child: InkWell(
              hoverColor: Colors.white.withOpacity(0.4),
              splashColor: Colors.white.withOpacity(0.2),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: widget.pageTo,
                      type: PageTransitionType.leftToRight,
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    width: widget.width ?? _screenWidth / 2.7,
                    height: position[widget.positionCode][2] ??
                        widget.length ??
                        _screenH / 2.8),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: widget.fontsize ?? _screenH / 35,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 5, color: Colors.grey[600]),
                    image: DecorationImage(
                        image: NetworkImage(widget.backImg),
                        fit: BoxFit.cover)),
              ),
            ))
        : InkWell(
            hoverColor: Colors.white.withOpacity(0.4),
            splashColor: Colors.white.withOpacity(0.2),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    duration: const Duration(milliseconds: 500),
                    child: widget.pageTo,
                    type: PageTransitionType.leftToRight,
                  ));
            },
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 2.7, height: _screenH / 2.8),
              child: Text(
                widget.title ?? "_",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: widget.fontsize != null
                        ? widget.fontsize
                        : _screenH / 35,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(4, 4), color: Colors.blue[100])
                  ],
                  image: DecorationImage(
                      image: NetworkImage(widget.backImg), fit: BoxFit.cover)),
            ),
          );
  }
}
