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
      @optionalTypeArgs this.shadowColor,
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
  final Color shadowColor;
  bool str = false;

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
  void initState() {
    if (widget.top != null) {
      widget.str = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.str != false
        ? Positioned(
            top: widget.top,
            left: widget.left,
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
                    width: widget.width != null
                        ? widget.width
                        : _screenWidth / 2.7,
                    height:
                        widget.length != null ? widget.length : _screenH / 2.8),
                child: Text(
                  widget.title != null ? widget.title : "-",
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
                          offset: const Offset(4, 4),
                          color: widget.shadowColor != null
                              ? widget.shadowColor
                              : Colors.blue[100])
                    ],
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
                widget.title,
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
                        offset: const Offset(4, 4),
                        color: widget.shadowColor != null
                            ? widget.shadowColor
                            : Colors.blue[100])
                  ],
                  image: DecorationImage(
                      image: NetworkImage(widget.backImg), fit: BoxFit.cover)),
            ),
          );
  }
}
