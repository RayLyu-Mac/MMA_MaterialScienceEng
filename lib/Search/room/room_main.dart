import 'room_data.dart';
import 'room_detail.dart';
import 'package:flutter/material.dart';

class room_main extends StatefulWidget {
  final HeroType heroType;
  const room_main({Key key, this.heroType}) : super(key: key);

  @override
  _room_mainState createState() => _room_mainState();
}

class _room_mainState extends State<room_main> {
  HeroType _heroType;
  double _screenWidth;
  List _heroTypeList = List<HeroType>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    super.initState();
    _heroTypeList = HeroType().createSampleList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Study Room in MSE",
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemExtent: 265,
              itemCount: _heroTypeList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(24, 16, 24, 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Hero(
                            tag: 'background' + _heroTypeList[index].title,
                            child: Container(
                              color: _heroTypeList[index].materialColor,
                            )),
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Hero(
                            tag: 'image' + _heroTypeList[index].title,
                            child: Image.network(
                              _heroTypeList[index].image,
                              fit: BoxFit.fitWidth,
                              height: 180,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 185,
                          left: 32.0,
                          width: _screenWidthAdjustment,
                          child: Hero(
                              tag: 'text' + _heroTypeList[index].title,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  '${_heroTypeList[index].title}',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                        ),
                        Positioned(
                            top: 213,
                            left: 32.0,
                            width: _screenWidthAdjustment,
                            child: Hero(
                                tag: 'subtitle' + _heroTypeList[index].title,
                                child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      _heroTypeList[index].subTitle,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )))),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 1000),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return room_detail(
                            heroType: HeroType(
                                title: _heroTypeList[index].title,
                                subTitle: _heroTypeList[index].subTitle,
                                fText: _heroTypeList[index].fText,
                                image: _heroTypeList[index].image,
                                forw: _heroTypeList[index].forw,
                                materialColor:
                                    _heroTypeList[index].materialColor));
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                            opacity:
                                animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                            child: child);
                      },
                    ));
                  },
                );
              })),
    );
  }
}
