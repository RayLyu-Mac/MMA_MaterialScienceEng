import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class IntroButtonMode extends StatefulWidget {
  IntroButtonMode(
      {required this.pageTo,
      required this.backImg,
      this.title,
      this.top,
      this.left,
      this.fontsize,
      this.length,
      this.width,
      required this.str,
      Key? key})
      : super(key: key);
  final Widget pageTo;
  final String backImg;
  final String? title;
  final double? fontsize;
  final double? top;
  final double? left;
  final double? width;
  final double? length;
  final bool str;

  @override
  _IntroButtonModeState createState() => _IntroButtonModeState();
}

class _IntroButtonModeState extends State<IntroButtonMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  // (page1(),page2(),page3(),page4()) //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      _screenH = _screenH * 0.96;
    }

    return widget.str != false
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: widget.pageTo,
                    type: PageTransitionType.leftToRight,
                  ));
            },
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 6),
              child: Text(
                widget.title!,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: widget.fontsize ?? _screenH / 35,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5, color: Colors.grey.shade600),
                  image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      image: NetworkImage(widget.backImg),
                      fit: BoxFit.cover)),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: widget.pageTo,
                    type: PageTransitionType.scale,
                    alignment: Alignment.bottomCenter,
                  ));
            },
            child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.2, height: _screenH / 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 6, color: Colors.grey.shade200),
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.white.withOpacity(0.6), BlendMode.dstATop),
                        image: NetworkImage(widget.backImg),
                        fit: BoxFit.cover)),
                child: Text(
                  widget.title ?? "_",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: widget.fontsize != null
                        ? widget.fontsize
                        : _screenH / 35,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          );
  }
}
