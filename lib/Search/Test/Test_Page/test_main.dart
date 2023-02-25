import 'test_data.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class test_ava extends StatefulWidget {
  const test_ava({Key? key}) : super(key: key);

  @override
  _test_avaState createState() => _test_avaState();
}

class _test_avaState extends State<test_ava> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  List _heroTypeList = test_data_list;
  double _screenWidthAdjustment = 0;
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Drawer testCase() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  Text(
                    "Case Studies in MSE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: _screenWidth / 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 1.5, height: _screenWidth / 4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/logocolor.png"))),
                  )
                ],
              )),
              for (var tc = 0; tc < _heroTypeList.length; tc++)
                ScrollcustomListTile(
                  name: _heroTypeList[tc].title,
                  pageTo: tc,
                  fonts: 13,
                  controller: controller,
                  offset: 300,
                )
            ],
          ),
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Test Availble in MSE",
            style: TextStyle(color: Colors.white, fontSize: 18)),
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
      ),
      drawer: testCase(),
      body: SafeArea(
          child: ListView.builder(
              itemExtent: 295.0,
              itemCount: _heroTypeList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    color: _heroTypeList[index].materialColor,
                    margin: EdgeInsets.fromLTRB(18, 18, 18, 14),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Hero(
                            tag: 'background' + _heroTypeList[index].title,
                            child: Container(
                              color: _heroTypeList[index].materialColor,
                            )),
                        Hero(
                          tag: 'image' + _heroTypeList[index].title,
                          child: Image.network(
                            _heroTypeList[index].image,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                            height: 195,
                          ),
                        ),
                        Hero(
                            tag: 'text' + _heroTypeList[index].title,
                            child: Material(
                              color: Colors.transparent,
                              child: Container(
                                child: Text(
                                  _heroTypeList[index].title,
                                  style: TextStyle(
                                      fontSize:
                                          _heroTypeList[index].titleFontSize ??
                                              25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            )),
                        Hero(
                            tag: 'subtitle' + _heroTypeList[index].title,
                            child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  _heroTypeList[index].subTitle,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ))),
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
