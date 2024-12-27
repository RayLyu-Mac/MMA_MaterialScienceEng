import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class pageMode extends StatefulWidget {
  final String? content;
  final String backImg;
  final String title;
  final String? addOnImg;
  final bool? wholeImg;
  final Widget? pageTo;
  final double? height;
  final double? length;
  final double? width;
  final double? left;
  pageMode(
      {required this.title,
      this.wholeImg,
      this.height,
      this.length,
      this.left,
      required this.backImg,
      this.width,
      this.content,
      this.addOnImg,
      this.pageTo,
      Key? key})
      : super(key: key);

  @override
  _pageModeState createState() => _pageModeState();
}

class _pageModeState extends State<pageMode> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(widget.title),
      ),
      body: Stack(
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
                  image: NetworkImage(widget.backImg),
                ),
              )),
          Positioned(
            top: _screenH / 30,
            left: _screenWidth / 13,
            child: Container(
                padding: EdgeInsets.fromLTRB(
                    _screenWidth / 15, 35, _screenWidth / 25, 25),
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.15, height: _screenH / 1.2),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(22.0),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white.withOpacity(0.4),
                    )),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                        height: _screenH / 35,
                      ),
                      Text(
                        widget.content ?? "Error",
                        style: TextStyle(
                            fontSize: _screenH / 38,
                            color: Colors.black,
                            fontFamily: "Raleway",
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: _screenH / 18,
                      ),
                      imgAddOn(
                        screenH: _screenH,
                        width: widget.width ?? 10,
                        length: widget.length ?? 10,
                        screenW: _screenWidth,
                        img: widget.addOnImg ?? "Null",
                        pageTo: widget.pageTo ?? Container(),
                      )
                    ]))),
          ),
        ],
      ),
    );
  }
}

class imgAddOn extends StatelessWidget {
  final String img;
  final double screenW;
  final double screenH;
  final Widget? pageTo;
  final double? length;
  final double? width;
  const imgAddOn(
      {required this.img,
      this.width,
      required this.screenH,
      this.length,
      this.pageTo,
      required this.screenW,
      Key? key})
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
                      child: pageTo!,
                      type: PageTransitionType.scale,
                      alignment: Alignment.topCenter));
            },
            child: Container(
                constraints: BoxConstraints.expand(
                    width: screenW / 1.2, height: screenH / 2.8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover))));
      } else {
        return Container(
            constraints: BoxConstraints.expand(
                width: screenW / (width ?? 1.3),
                height: screenH / (length ?? 3.6)),
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
