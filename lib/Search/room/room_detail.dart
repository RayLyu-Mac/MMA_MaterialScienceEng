import 'room_data.dart';
import 'package:flutter/material.dart';

class room_detail extends StatefulWidget {
  final HeroType heroType;
  const room_detail({Key? key, required this.heroType}) : super(key: key);

  @override
  _room_detailState createState() => _room_detailState();
}

class _room_detailState extends State<room_detail> {
  double _screenWidth = 0;
  double _screenH = 0;

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
          backgroundColor: widget.heroType.materialColor,
          title: Text('${widget.heroType.title}',
              style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            Hero(
              tag: 'background' + widget.heroType.title,
              child: Container(
                color: widget.heroType.materialColor,
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                width: _screenWidth,
                height: _screenH / 2.6,
                child: Hero(
                    tag: 'image' + widget.heroType.title,
                    child: Image.network(
                      widget.heroType.image,
                      fit: BoxFit.fitWidth,
                    ))),
            Positioned(
                top: 270.0,
                left: 25,
                width: _screenWidth - 64.0,
                child: Hero(
                    tag: 'fText' + widget.heroType.fText,
                    child: Material(
                        color: Colors.transparent,
                        child: Text(widget.heroType.fText,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ))))),
            Positioned(
              top: _screenH / 1.4,
              left: _screenWidth / 5,
              width: _screenWidth - 164.0,
              child: ElevatedButton(
                child: Text("Go to the detailed Page"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => widget.heroType.forw));
                },
              ),
            )
          ],
        )));
  }
}
