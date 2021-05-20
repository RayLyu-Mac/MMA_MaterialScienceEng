import 'room_data.dart';
import 'package:flutter/material.dart';

class room_detail extends StatefulWidget {
  final HeroType heroType;
  const room_detail({Key key, this.heroType}) : super(key: key);

  @override
  _room_detailState createState() => _room_detailState();
}

class _room_detailState extends State<room_detail> {
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
                  fontSize: 27,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            Hero(
              tag: 'background' + _heroType.title,
              child: Container(
                color: _heroType.materialColor,
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                width: _screenWidth,
                height: _screenH / 2.6,
                child: Hero(
                    tag: 'image' + _heroType.title,
                    child: Image.network(
                      _heroType.image,
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                top: 270.0,
                left: 25,
                width: _screenWidth - 64.0,
                child: Hero(
                    tag: 'fText' + _heroType.fText,
                    child: Material(
                        color: Colors.transparent,
                        child: Text(_heroType.fText,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ))))),
            Positioned(
              top: _screenH / 1.4,
              left: _screenWidth / 5,
              width: _screenWidth - 164.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.white, width: 2)),
                color: _heroType.materialColor.withOpacity(0.4),
                splashColor: _heroType.materialColor.withOpacity(0.99),
                child: Text("Go to the detailed Page"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => _heroType.forw));
                },
              ),
            )
          ],
        )));
  }
}
