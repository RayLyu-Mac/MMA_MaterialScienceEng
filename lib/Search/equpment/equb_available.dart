import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
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
                height: _screenH / 2.3,
                child: Hero(
                    tag: 'image' + _heroType.title,
                    child: Image.network(
                      _heroType.image,
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                top: _screenH / 2.2,
                left: 25,
                width: _screenWidth - 64.0,
                child: Hero(
                    tag: 'fText' + _heroType.fText,
                    child: Material(
                        color: Colors.transparent,
                        child: Text(_heroType.fText,
                            style: TextStyle(
                              fontSize: _screenH / 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))))),
            Positioned(
                top: _screenH / 1.3,
                left: 25,
                width: _screenWidth - 64.0,
                child: Hero(
                  tag: 'pageTo',
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(4, 4), color: Colors.white24)
                        ],
                      ),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 600),
                                    child: _heroType.pageTo,
                                    type: PageTransitionType.scale,
                                    alignment: Alignment.centerLeft));
                          },
                          hoverColor: Colors.white,
                          color: _heroType.materialColor.withOpacity(0.1),
                          child: Text(
                            "Go to the equipment page",
                            style: TextStyle(fontSize: _screenH / 40),
                          ))),
                ))
          ],
        ),
      ),
    );
  }
}
