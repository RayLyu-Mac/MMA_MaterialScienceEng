import 'package:flutter/material.dart';

class pageMode extends StatefulWidget {
  final Map<String, String> doucment;
  final String back_img;
  final String title;
  final String addOnImg;
  final String docNumber;
  final bool wholeImg;
  pageMode(
      {@required this.title,
      @optionalTypeArgs this.wholeImg,
      @required this.doucment,
      @required this.back_img,
      @optionalTypeArgs this.docNumber,
      @optionalTypeArgs this.addOnImg,
      Key key})
      : super(key: key);

  @override
  _pageModeState createState() => _pageModeState();
}

class _pageModeState extends State<pageMode> {
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
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH,
                width: _screenWidth,
                alignment: Alignment.center,
                image: AssetImage(widget.back_img),
              ),
            )),
        Positioned(
          top: _screenH / 6.5,
          left: _screenWidth / 13,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.15, height: _screenH / 1.35),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.4),
                  )),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(_screenWidth / 4.6,
                        _screenH / 60, _screenWidth / 40, _screenH / 60)),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _screenH / 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Raleway",
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: _screenH / 50,
                ),
                Text(
                  widget.doucment[widget.docNumber != null
                      ? widget.docNumber
                      : widget.title],
                  style: TextStyle(
                      fontSize: _screenH / 42,
                      color: Colors.black,
                      fontFamily: "Raleway",
                      decoration: TextDecoration.none),
                ),
              ])),
        ),
        Positioned(
            top: _screenH / 1.6,
            left: _screenWidth / 5.5,
            child: imgAddOn(
              screenH: _screenH,
              screenW: _screenWidth,
              img: widget.addOnImg,
            ))
      ],
    );
  }
}

class imgAddOn extends StatelessWidget {
  final String img;
  final double screenW;
  final double screenH;
  const imgAddOn(
      {@required this.img,
      @required this.screenH,
      @required this.screenW,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (img != null) {
      return Container(
          constraints: BoxConstraints.expand(
              width: screenW / 1.5, height: screenH / 4.3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage(img), fit: BoxFit.cover)));
    } else {
      return SizedBox(
        height: 0,
      );
    }
  }
}
