import 'package:flutter/material.dart';
import 'package:mma_mse/fancyButton.dart';
import 'equb_ava_data.dart';
import 'package:page_transition/page_transition.dart';

class equb_ava extends StatefulWidget {
  final HeroType heroType;
  const equb_ava({Key key, this.heroType}) : super(key: key);

  @override
  _equb_avaState createState() => _equb_avaState();
}

class _equb_avaState extends State<equb_ava> {
  HeroType _heroType;
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void initState() {
    super.initState();
    _heroType = widget.heroType;
  }

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _heroType.materialColor,
        title: Text('${_heroType.title}',
            style: TextStyle(
                fontSize: _screenH / 35,
                color: Colors.grey[800],
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: 'background' + _heroType.title,
              child: Container(
                color: _heroType.materialColor.withOpacity(0.9),
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                width: _screenWidth,
                height: _screenH / 2.7 / adjust,
                child: Hero(
                    tag: 'image' + _heroType.title,
                    child: Image.network(
                      _heroType.image,
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                top: _screenH / 2.65 / adjust,
                left: 10,
                width: _screenWidth - 14.0,
                child: Hero(
                    tag: 'fText' + _heroType.fText,
                    child: Material(
                        color: Colors.transparent,
                        child: Text(_heroType.fText,
                            style: TextStyle(
                              fontSize: _screenH / 48,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))))),
            Positioned(
              top: _screenH / 1.27 / adjust,
              left: 25,
              width: _screenWidth - 64.0,
              child: Hero(
                tag: 'pageTo',
                child: fancyBut(
                  pageTo: _heroType.pageTo,
                  width: _screenWidth / 1.8,
                  height: _screenWidth / 8.2,
                  icon: Icons.follow_the_signs_rounded,
                  buttonName: "Go to the equipment page",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
