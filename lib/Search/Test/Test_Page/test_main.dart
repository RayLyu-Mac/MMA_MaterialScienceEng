import 'test_data.dart';
import 'package:flutter/material.dart';

class test_ava extends StatefulWidget {
  final HeroType heroType;
  const test_ava({Key key, this.heroType}) : super(key: key);

  @override
  _test_avaState createState() => _test_avaState();
}

class _test_avaState extends State<test_ava> {
  HeroType _heroType;
  double _screenWidth;
  List _heroTypeList = List<HeroType>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    super.initState();
    _heroTypeList = HeroType().test_data_list();
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
        title: Text("Test Availble in MSE",
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemExtent: 275.0,
              itemCount: _heroTypeList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(8, 12, 20, 8),
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
                              height: 190,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 193.0,
                          left: 10.0,
                          width: _screenWidthAdjustment,
                          child: Hero(
                              tag: 'text' + _heroTypeList[index].title,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  '${_heroTypeList[index].title}',
                                  style: TextStyle(
                                      fontSize:
                                          _heroTypeList[index].titleFontSize ??
                                              25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                        ),
                        Positioned(
                            top: 223.0,
                            left: 10.0,
                            width: _screenWidthAdjustment,
                            child: Hero(
                                tag: 'subtitle' + _heroTypeList[index].title,
                                child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      _heroTypeList[index].subTitle,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: _heroTypeList[index]
                                                  .contentFontsize ??
                                              16,
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
                        return _heroTypeList[index].pageTo;
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
