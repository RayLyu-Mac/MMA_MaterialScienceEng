import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class pageMode extends StatefulWidget {
  final String content;
  final String back_img;
  final String title;
  final String addOnImg;
  final String docNumber;
  final bool wholeImg;
  final Widget pageTo;
  pageMode(
      {@required this.title,
      @optionalTypeArgs this.wholeImg,
      @required this.back_img,
      @optionalTypeArgs this.content,
      @optionalTypeArgs this.docNumber,
      @optionalTypeArgs this.addOnImg,
      @optionalTypeArgs this.pageTo,
      Key key})
      : super(key: key);

  @override
  _pageModeState createState() => _pageModeState();
}

class _pageModeState extends State<pageMode> {
  double _screenWidth;
  double _screenH;
  double adjust;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.85;
      adjust = 0.85;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH / adjust,
                width: _screenWidth,
                alignment: Alignment.center,
                image: NetworkImage(widget.back_img),
              ),
            )),
        Positioned(
          top: _screenH / 12.5,
          left: _screenWidth / 13,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.15, height: _screenH / 1.15 / adjust),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.4),
                  )),
              child: Column(children: [
                Flexible(
                  flex: 3,
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: _screenH / 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Raleway",
                        decoration: TextDecoration.none),
                  ),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                Flexible(
                  flex: 20,
                  fit: FlexFit.loose,
                  child: Text(
                    widget.content != null ? widget.content : "Error",
                    style: TextStyle(
                        fontSize: _screenH / 37,
                        color: Colors.black,
                        fontFamily: "Raleway",
                        decoration: TextDecoration.none),
                  ),
                )
              ])),
        ),
        Positioned(
            top: _screenH / 1.5 / adjust,
            left: _screenWidth / 7.5,
            child: imgAddOn(
              screenH: _screenH,
              screenW: _screenWidth,
              img: widget.addOnImg,
              pageTo: widget.pageTo,
            ))
      ],
    );
  }
}

class imgAddOn extends StatelessWidget {
  final String img;
  final double screenW;
  final double screenH;
  final Widget pageTo;
  const imgAddOn(
      {@required this.img,
      @required this.screenH,
      @optionalTypeArgs this.pageTo,
      @required this.screenW,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (img != null) {
      if (pageTo != null) {
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: Duration(milliseconds: 700),
                      child: pageTo,
                      type: PageTransitionType.scale,
                      alignment: Alignment.topCenter));
            },
            child: Container(
                constraints: BoxConstraints.expand(
                    width: screenW / 1.3, height: screenH / 3.6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover))));
      } else {
        return Container(
            constraints: BoxConstraints.expand(
                width: screenW / 1.3, height: screenH / 3.6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.fitWidth)));
      }
    } else {
      return SizedBox(
        height: 0,
      );
    }
  }
}
