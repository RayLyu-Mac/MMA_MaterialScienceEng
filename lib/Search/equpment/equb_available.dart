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
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        height: _screenH / 0.85,
        decoration: BoxDecoration(
          color: _heroType.materialColor.withAlpha(85),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'background' + _heroType.title,
                child: Container(
                  color: _heroType.materialColor.withOpacity(0.9),
                ),
              ),
              Container(
                  height: _screenH / 2.5,
                  width: _screenWidth,
                  child: Hero(
                      tag: 'image' + _heroType.title,
                      child: Image.network(
                        _heroType.image,
                        fit: BoxFit.fitWidth,
                      ))),
              SizedBox(
                height: _screenH / 30,
              ),
              Container(
                  padding: EdgeInsets.only(left: _screenWidth / 45),
                  width: _screenWidth - 14.0,
                  child: Hero(
                      tag: 'fText' + _heroType.fText,
                      child: Material(
                          color: Colors.transparent,
                          child: Text(_heroType.fText,
                              style: TextStyle(
                                fontSize: _screenH / (44),
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ))))),
              SizedBox(
                height: _screenH / 17,
              ),
              Container(
                width: _screenWidth - 64.0,
                child: Hero(
                  tag: 'pageTo',
                  child: fancyBut(
                    pageTo: _heroType.pageTo,
                    width: _screenWidth / 1.4,
                    height: _screenWidth / 5.5,
                    fontsize: _screenH / 35,
                    icon: Icons.follow_the_signs_rounded,
                    buttonName: "Go to the equipment page",
                  ),
                ),
              ),
              SizedBox(
                height: _screenH / 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
