import 'package:flutter/material.dart';
import 'FireData.dart';
import 'package:mma_mse/customTileScroll.dart';
import 'package:mma_mse/Search/safty/ShowerWasher/location.dart';
import 'package:page_transition/page_transition.dart';

class ExtingshSymbols extends StatefulWidget {
  ExtingshSymbols({Key key}) : super(key: key);

  @override
  _ExtingshSymbolsState createState() => _ExtingshSymbolsState();
}

class _ExtingshSymbolsState extends State<ExtingshSymbols> {
  double _screenWidth;
  double _screenH;
  double adjust;
  List tiles = [];
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
  void initState() {
    super.initState();
    for (var j = 0; j < result.length; j++) {
      tiles.add(result[j].title);
    }
  }

  List<testdetailData> result = testdetailData().detailL();
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    Drawer tensileResult() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Fire Class")),
              for (var j = 0; j < result.length; j++)
                ScrollcustomListTile(
                  name: result[j].title,
                  pageTo: j,
                  fonts: 12,
                  controller: controller,
                  offset: 385,
                )
            ],
          ),
        );

    return Scaffold(
        backgroundColor: Colors.redAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Fire Class",
            style: TextStyle(fontSize: _screenH / 40),
          ),
        ),
        drawer: Container(
          width: _screenWidth / 1.4,
          child: tensileResult(),
        ),
        body: ListView.builder(
            itemCount: result.length,
            itemExtent: 445,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  color: Colors.white.withOpacity(0.7),
                  semanticContainer: true,
                  margin: EdgeInsets.fromLTRB(21, 16, 21, 8),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Text(
                        result[index].title,
                        style: TextStyle(
                            fontSize: result[index].titleFontsize ?? 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.network(
                        result[index].addOnImg,
                        fit: BoxFit.fitWidth,
                        height: 205,
                        width: _screenWidth / 1.17,
                      ),
                      Container(
                          width: _screenWidth / 1.2,
                          child: Text(
                            result[index].content,
                            style: TextStyle(
                                fontSize: result[index].contentFontsize ??
                                    _screenH / 45),
                          )),
                      SizedBox(
                        height: _screenH / 40,
                      ),
                      FlatButton.icon(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          shape: Border.all(width: 5, color: Colors.grey[200]),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 700),
                                    child: eyewashStation(
                                        eye: false, fire: true)));
                          },
                          icon: Icon(Icons.location_city_outlined),
                          label: Text("Location of the extinguisher"))
                    ],
                  ));
            }));
  }
}
